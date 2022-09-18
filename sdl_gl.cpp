#include <SDL2/SDL.h>

#if defined(__APPLE__)
#include <GLUT/glut.h>
#else
#include <GL/glut.h>
#endif

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include <iostream>
#include <fstream>
#include <sstream>

using std::cout, std::endl;

/**************************************************************************/
#include "constants.h"
#include "datatypes.h"
#include "types.h"
#include "vector.h"
#include "icosphere.h"
#include "cube.h"
#include "light.h"
#include "grid.h"
#include "textdisplay.h"
/**************************************************************************/

point3D vp = {5, 3, 5}, vd, vt;

bool bMove = false;
int moveDirection;

float xang = -77, yang = 43;
bool bFirst = true;

float ftime = 0;
bool isRunning = true;

IcoSphere icosphere(1, {0, 1, 0}, {1.0, 1.0, 1.0, 1});

Cube lightcube(0.1, {0, 5, 0}, {1.0, 1.0, 1.0, 1});

float light_angle = 0;

TextDisplay debugDisplay;

Light light0(GL_LIGHT0) ; // light1(GL_LIGHT1);

/**************************************************************************/
static void setup_scene()
{
  icosphere.do_subdivide();
  icosphere.do_subdivide();
  icosphere.dump();

  light0.setAmbient(0.0f, 0.0f, 0.0f, 0.0f);
  light0.setDiffuse(1, 1, 1, 1);

  //light1.setAmbient(0.0f, 0.0f, 0.0f, 0.0f);
  //light1.setDiffuse(0.1, 0.1, 0.1, 1);
}

static void animate(float delta)
{

  light_angle += 1 * delta;

  GLfloat lightpos[] = {10 * (GLfloat)cos(light_angle), 5 * (GLfloat)sin(3 * light_angle), 10 * (GLfloat)sin(light_angle), 1};
  lightcube.setPosition({lightpos[0], lightpos[1], lightpos[2]});
  light0.setPosition(lightpos[0], lightpos[1], lightpos[2], lightpos[3]);

  //GLfloat lightpos1[] = {10 * (GLfloat)cos(light_angle + 10), 5 * (GLfloat)sin(3 * light_angle + 10), 10 * (GLfloat)sin(light_angle + 10), 1};
  //light1.setPosition(lightpos1[0], lightpos1[1], lightpos1[2], lightpos1[3]);

  /* Update user position and orientation based on input */
  vd.x = (-1 * cos(PI * yang / 360) * sin(PI * xang / 360));
  vd.y = sin(PI * yang / 360);
  vd.z = cos(PI * yang / 360) * cos(PI * xang / 360);

  if (bMove == true)
  {
    vp.x -= 8 * delta * moveDirection * vd.x;
    vp.y -= 8 * delta * moveDirection * vd.y;
    vp.z -= 8 * delta * moveDirection * vd.z;
  }
  vt.x = vp.x - vd.x;
  vt.y = vp.y - vd.y;
  vt.z = vp.z - vd.z;
}
/**************************************************************************/
static void quit(int status)
{

  SDL_Quit();
  exit(status);
}

static void process_events2(void)
{
  SDL_Event sdl_event;
  /* Process incoming events. */
  while (SDL_PollEvent(&sdl_event) != 0)
  {
    switch (sdl_event.type)
    {
    case SDL_MOUSEMOTION:

      if (bFirst == false)
      {
        // TODO: Limit yang to +/- 179
        xang += sdl_event.motion.xrel;
        yang += sdl_event.motion.yrel;
        if (yang > 179)
          yang = 179;

        if (yang < -179)
          yang = -179;
      }
      bFirst = false;

      break;

    case SDL_MOUSEBUTTONDOWN:
    {
      Uint8 mouse_state = SDL_GetMouseState(NULL, NULL);
      if (mouse_state & SDL_BUTTON_LMASK)
      {
        bMove = true;
        moveDirection = 1;
      }
      if (mouse_state & SDL_BUTTON_RMASK)
      {
        bMove = true;
        moveDirection = -1;
      }
      break;
    }
    case SDL_MOUSEBUTTONUP:
    {
      bMove = false;
      break;
    }
    case SDL_QUIT:
      /* Handle quit requests (like Ctrl-c). */
      isRunning = false;
      break;
    case SDL_KEYDOWN:
      switch (sdl_event.key.keysym.sym)
      {
      case SDLK_ESCAPE:
        isRunning = false;
        break;
      }
      break;
    }
    /*		if (sdl_event.type == SDL_QUIT)
        {
          isRunning = false ;
        } else if (sdl_event.type == SDL_KEYDOWN)
        {
          switch (sdl_event.key.keysym.sym)
          {
            case SDLK_ESCAPE:
              isRunning = false ;
              break ;
          }
        }*/
  }
}

static void draw_screen(void)
{

  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

  light0.addLightToScene();
  //light1.addLightToScene();

  debugDisplay.PrintAt(0, 0, (long int)xang);
  debugDisplay.PrintAt(10, 0, (long int)yang);
  debugDisplay.PrintAt(10, 0, ftime);
  debugDisplay.PrintAt(20, 0, 1 / ftime);

  /* We don't want to modify the projection matrix. */
  glMatrixMode(GL_MODELVIEW);
  glLoadIdentity();

  gluLookAt(vp.x, vp.y, vp.z,
            vt.x, vt.y, vt.z,
            0, 1, 0);

  // glColor3f(1,1,1) ;
  icosphere.draw();
  //  icosphere.drawWireFrame();
  /*  icosphere.drawNormals();*/
  //draw_wire_gridY(10, 0.5, 0);
  draw_gridY(10, 0.5, 5,0);
}

static void setup_opengl(int width, int height)
{
  float ratio = (float)width / (float)height;

  /* Our shading model--Gouraud (smooth). */
  glShadeModel(GL_SMOOTH);

  /* Culling. */
  glCullFace(GL_BACK);
  glFrontFace(GL_CCW);
  glEnable(GL_CULL_FACE);

  /* Set the clear color. */
  glClearColor(0, 0, 0, 0);

  /* Setup our viewport. */
  glViewport(0, 0, width, height);

  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();
  gluPerspective(60.0, ratio, 0.01, 1024.0);
}

int main(int argc, char *argv[])
{
  cout << "start of main..." << endl;
  /* First, initialize SDL's video subsystem. */
  if (SDL_Init(SDL_INIT_VIDEO) < 0)
  {
    /* Failed, exit. */
    fprintf(stderr, "Video initialization failed: %s\n",
            SDL_GetError());
    quit(1);
  }
  cout << "After SDL_Init..." << endl;

  SDL_DisplayMode current;
  int should_be_zero = SDL_GetCurrentDisplayMode(0, &current);

  if (should_be_zero != 0)
    // In case of error...
    SDL_Log("Could not get display mode for video display #%d: %s", 0, SDL_GetError());

  else
    // On success, print the current display mode.
    SDL_Log("Display #%d: current display mode is %dx%dpx @ %dhz.", 0, current.w, current.h, current.refresh_rate);

  int width = current.w, height = current.h, bpp = 32;

  cout << "video width: " << width << endl;
  cout << "video height: " << height << endl;
  cout << "video bpp: " << bpp << endl;
  // cout << "SetProperties" << endl ;
  debugDisplay.SetProperties(width, height);

  // cout << "DOne SetProperties" << endl ;
  SDL_GL_SetAttribute(SDL_GL_RED_SIZE, 5);
  SDL_GL_SetAttribute(SDL_GL_GREEN_SIZE, 5);
  SDL_GL_SetAttribute(SDL_GL_BLUE_SIZE, 5);
  SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE, 16);
  SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);
  SDL_GL_SetAttribute(SDL_GL_STENCIL_SIZE, 5);
  // cout << "Set a bunch of attributes..." << endl ;
  Uint32 WindowFlags = SDL_WINDOW_OPENGL | SDL_WINDOW_FULLSCREEN;
  SDL_Window *sdl_window = SDL_CreateWindow("OpenGL Test", 0, 0, width, height, WindowFlags);
  SDL_GLContext glContext = SDL_GL_CreateContext(sdl_window);

  setup_opengl(width, height);
  cout << "Vendor: " << glGetString(GL_VENDOR) << endl;
  cout << "Renderer: " << glGetString(GL_RENDERER) << endl;
  // cout << "after setup opengl" << endl ;
  debugDisplay.InitFontTextures();
  // cout << "after init font textures" << endl;

  setup_scene();

  // cout << "subdivided icosphere" << endl ;
  glEnable(GL_DEPTH_TEST);
  // cout << "enabled depth test" << endl ;
  glDepthFunc(GL_LESS);

  glEnable(GL_LIGHTING); // enable the lighting
  // cout << "enabled lighting" << endl ;

  // cout << "set light properties" << endl ;

  // cout << "about to enable light 1" << endl ;
  //glEnable(GL_LIGHT1); // enable LIGHT0, our Diffuse Light
                       // cout << "enabled light 1" << endl ;
  SDL_ShowCursor(SDL_DISABLE);
  SDL_SetRelativeMouseMode(SDL_TRUE);

  Uint32 old_time, current_time;

  // Need to initialize this here for event loop to work
  current_time = SDL_GetTicks();

  while (isRunning)
  {

    debugDisplay.ClearTextDisplay();
    old_time = current_time;
    current_time = SDL_GetTicks();
    ftime = (current_time - old_time) / 1000.0f;

    process_events2();
    animate(ftime);
    /* Draw the screen. */
    draw_screen();
    lightcube.draw();
    debugDisplay.DrawTextDisplay();
    SDL_GL_SwapWindow(sdl_window);
  }

  cout << "Quiting...." << endl;
  SDL_DestroyWindow(sdl_window);
  SDL_GL_DeleteContext(glContext);
  SDL_Quit();
  return 0;

}
