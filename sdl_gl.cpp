/*
 * SDL OpenGL Tutorial.
 * (c) Michael Vance, 2000
 * briareos@lokigames.com
 *
 * Distributed under terms of the LGPL. 
 */

#include <SDL/SDL.h>

#if defined(__APPLE__)
#include <GLUT/glut.h>
#else
#include <GL/glut.h>
#endif

//#include <GL/gl.h>
//#include <GL/glu.h>

using namespace std;

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include <iostream>
#include <fstream>
#include <sstream>

/**************************************************************************/
#include "constants.h"
#include "datatypes.h"
#include "types.h"
#include "vector.h"
#include "object.h"
#include "icosphere.h"
#include "cube.h"
#include "grid.h"
#include "textdisplay.h"
#include "particles.h"
/**************************************************************************/

class Light {

  GLenum light ;
  GLfloat lightpos[4] ;
  GLfloat diffuse[4] ;
  GLfloat ambient[4] ;
Cube lightcube ; //(0.1, { 0, 5, 0 }, { 1.0, 1.0, 1.0,1 }) ;
  public:
    Light(GLenum l) ;

    void addLightToScene() ;
    void setPosition(GLfloat x, GLfloat y, GLfloat z, GLfloat w) ;
    void setAmbient(GLfloat r, GLfloat g, GLfloat b, GLfloat a) ;
    void setDiffuse(GLfloat r, GLfloat g, GLfloat b, GLfloat a) ;
} ;


Light::Light(GLenum l) {
  light = l ;
  //glEnable(l) ;
}

void Light::addLightToScene() {
  glEnable(light) ;
  //GLfloat lightpos1[] = {10*(GLfloat)cos(light_angle+10), 5*(GLfloat)sin(3*light_angle+10), 10*(GLfloat)sin(light_angle+10), 1};
  glLightfv(light, GL_POSITION, lightpos);

  //GLfloat diffuse1[] = {0.0f, 1.0f, 0.0f , 1.0f};
  glLightfv(light, GL_DIFFUSE, diffuse);

  //GLfloat ambient1[] = {0.0f, 0.0f, 0.0f, 0.0f};
  glLightfv(light, GL_AMBIENT, ambient);

}

void Light::setPosition(GLfloat x, GLfloat y, GLfloat z, GLfloat w) {
  lightpos[0] = x ;
  lightpos[1] = y ;
  lightpos[2] = z ;
  lightpos[3] = w ;     
}

void Light::setAmbient(GLfloat r, GLfloat g, GLfloat b, GLfloat a) {
  ambient[0] = r ;
  ambient[1] = g ;
  ambient[2] = b ;
  ambient[3] = a ;     
}

void Light::setDiffuse(GLfloat r, GLfloat g, GLfloat b, GLfloat a) {
  diffuse[0] = r ;
  diffuse[1] = g ;
  diffuse[2] = b ;
  diffuse[3] = a ;     
}
/**************************************************************************/
point3D vp = {5,3,5}, vd, vt ;
bool bMove = false ;
int moveDirection ;

float xang =-77, yang = 43 ;
bool bFirst = true ;

IcoSphere icosphere(1, { 0, 1, 0 }, { 1.0, 1.0,1.0,1 }) ;
Cube cube          (1, { 3, 1, 0 }, { 1.0, 0.5,0.5,1 }) ;
Cube lightcube(0.1, { 0, 5, 0 }, { 1.0, 1.0, 1.0,1 }) ;

float light_angle = 0 ;

TextDisplay debugDisplay ; 

Light light0(GL_LIGHT0), light1(GL_LIGHT1) ;

/*Particles particleCloud ;
Particles particleFountain ;
Particles particleFountain2 ;*/
Particles particleBurster ;
/**************************************************************************/

static void quit( int status ) {

    SDL_Quit( );
    exit( status );

}

static void handle_key_down( SDL_keysym* keysym ) {

  switch( keysym->sym ) {
    case SDLK_ESCAPE:
        quit( 0 );
        break;
    default:
        break;
  }

}

static void animate(float delta) {

  light_angle += 1*delta; 

  lightcube.setPosition({10*(GLfloat)cos(light_angle), 5*(GLfloat)sin(3*light_angle), 10*(GLfloat)sin(light_angle)}) ;

  /* Update user position and orientation based on input */
  vd.x = (-1*cos(PI*yang/360)*sin(PI*xang/360)) ;
  vd.y = sin(PI*yang/360) ; 
  vd.z = cos(PI*yang/360)*cos(PI*xang/360) ;

  if (bMove == true) {  
    vp.x -= 8 * delta * moveDirection * vd.x ;
    vp.y -= 8 * delta * moveDirection * vd.y ;
    vp.z -= 8 * delta * moveDirection * vd.z ;
  }
  vt.x = vp.x - vd.x ;
  vt.y = vp.y - vd.y ; 
  vt.z = vp.z - vd.z ; 

 /* particleCloud.animate(delta) ;
  particleFountain.animate(delta) ;
  particleFountain2.animate(delta) ; */ 
  particleBurster.animate(delta) ;

particleBurster.setEmitterOrigin({10*(GLfloat)cos(light_angle), 6 + 5*(GLfloat)sin(3*light_angle), 10*(GLfloat)sin(light_angle)}) ;  
}

static void process_events( void )
{
    /* Our SDL event placeholder. */
    SDL_Event event;

    /* Grab all the events off the queue. */
    while( SDL_PollEvent( &event ) ) {

        switch( event.type ) {
        case SDL_KEYDOWN:
            /* Handle key presses. */
            handle_key_down( &event.key.keysym );
            break;
        case SDL_MOUSEMOTION:

          if (bFirst == false) {
            // TODO: Limit yang to +/- 179
            xang += event.motion.xrel ;
            yang += event.motion.yrel ;
            if (yang > 179) 
              yang = 179 ;

            if (yang < -179)
              yang = -179 ;
          }
            bFirst = false ;

            break ;

        case SDL_MOUSEBUTTONDOWN: {
          Uint8 mouse_state = SDL_GetMouseState(NULL, NULL); 
          if(mouse_state & SDL_BUTTON_LMASK) {
            bMove = true ;
            moveDirection = 1 ;
          }
          if(mouse_state & SDL_BUTTON_RMASK) {
            bMove = true ;
            moveDirection = -1 ;    
          }         
          break ;
        }
        case SDL_MOUSEBUTTONUP: {
          bMove = false ;
          break ;
        }
        case SDL_QUIT:
            /* Handle quit requests (like Ctrl-c). */
            quit( 0 );
            break;
        }
    }
}

static void draw_screen( void )
{
  
  //glStencilMask(0xFFFFFFFF);

  glClear( GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT | GL_STENCIL_BUFFER_BIT);

//  debugDisplay.ClearTextDisplay() ;

  GLfloat lightpos[] = {10*(GLfloat)cos(light_angle), 5*(GLfloat)sin(3*light_angle), 10*(GLfloat)sin(light_angle), 1};

  /*glLightfv(GL_LIGHT0, GL_POSITION, lightpos);

  GLfloat diffuse0[] = {1.0f, 0.0f, 0.0f , 1.0f};
  glLightfv(GL_LIGHT0, GL_DIFFUSE, diffuse0);

  GLfloat ambient0[] = {0.0f, 0.0f, 0.0f, 0.0f};
  glLightfv(GL_LIGHT0, GL_AMBIENT, ambient0);
  //lightRoot.origin = { lightpos[0], lightpos[1], lightpos[2] } ;*/

light0.setPosition(lightpos[0], lightpos[1], lightpos[2], lightpos[3]) ;
light0.addLightToScene() ;

  GLfloat lightpos1[] = {10*(GLfloat)cos(light_angle+10), 5*(GLfloat)sin(3*light_angle+10), 10*(GLfloat)sin(light_angle+10), 1};

 light1.setPosition(lightpos1[0], lightpos1[1], lightpos1[2], lightpos1[3]) ;
light1.addLightToScene() ; 
/*  glLightfv(GL_LIGHT1, GL_POSITION, lightpos1);

  GLfloat diffuse1[] = {0.0f, 1.0f, 0.0f , 1.0f};
  glLightfv(GL_LIGHT1, GL_DIFFUSE, diffuse1);

  GLfloat ambient1[] = {0.0f, 0.0f, 0.0f, 0.0f};
  glLightfv(GL_LIGHT1, GL_AMBIENT, ambient1);*/
  //lightRoot.origin = { lightpos1[0], lightpos1[1], lightpos1[2] } ;




  debugDisplay.PrintAt(0,0,(long int)xang) ;
  debugDisplay.PrintAt(10,0,(long int)yang) ;
//  debugDisplay.PrintAt(0,3,(long int)particleCloud.count()) ;
//  debugDisplay.PrintAt(0,4,(long int)particleFountain.count()) ;
  debugDisplay.PrintAt(0,5,(long int)particleBurster.count()) ; 
  /* We don't want to modify the projection matrix. */
  glMatrixMode( GL_MODELVIEW );
  glLoadIdentity( );

  gluLookAt(vp.x, vp.y, vp.z,
            vt.x, vt.y, vt.z,
            0,     1,     0) ;

 // icosphere.draw() ;
  //cube.draw() ; 
 // lightcube.draw() ; 
  draw_wire_gridY(10,0.5,0) ;

//particleCloud.draw() ;
//particleCloud.drawEmitter() ;

/*particleFountain.draw() ;
particleFountain.drawEmitter() ;

particleFountain2.draw() ;
particleFountain2.drawEmitter() ;*/

particleBurster.draw() ;
particleBurster.drawEmitter() ;

  debugDisplay.DrawTextDisplay() ;

  SDL_GL_SwapBuffers( );
}

static void setup_opengl( int width, int height )
{
  float ratio = (float) width / (float) height;

  /* Our shading model--Gouraud (smooth). */
  glShadeModel( GL_SMOOTH );

  /* Culling. */
  glCullFace( GL_BACK );
  glFrontFace( GL_CCW );
  glEnable( GL_CULL_FACE );

  /* Set the clear color. */
  glClearColor( 0, 0, 0, 0 );

  /* Setup our viewport. */
  glViewport( 0, 0, width, height );

  /*
   * Change to the projection matrix and set
   * our viewing volume.
  */
  glMatrixMode( GL_PROJECTION );
  glLoadIdentity( );
  gluPerspective( 60.0, ratio, 0.01, 1024.0 );
}

int main( int argc, char* argv[] )
{

    /* Information about the current video settings. */
    const SDL_VideoInfo* info = NULL;

    /* Dimensions of our window. */
    int width = 0;
    int height = 0;
    /* Color depth in bits of our window. */
    int bpp = 0;
    /* Flags we will pass into SDL_SetVideoMode. */
    int flags = 0;

    /* First, initialize SDL's video subsystem. */
    if( SDL_Init( SDL_INIT_VIDEO ) < 0 ) {
        /* Failed, exit. */
        fprintf( stderr, "Video initialization failed: %s\n",
        SDL_GetError( ) );
        quit( 1 );
    }

    /* Let's get some video information. */
    info = SDL_GetVideoInfo( );

    if( !info ) {
        /* This should probably never happen. */
        fprintf( stderr, "Video query failed: %s\n",
        SDL_GetError( ) );
        quit( 1 );
    }


    /*
     * Set our width/height to (you would
     * of course let the user decide this in a normal
     * app). We get the bpp we will request from
     * the display. On X11, VidMode can't change
     * resolution, so this is probably being overly
     * safe. Under Win32, ChangeDisplaySettings
     * can change the bpp.
     */

    bpp = info->vfmt->BitsPerPixel;

    width = info->current_w ;
    height = info->current_h ;

debugDisplay.SetProperties(width,height) ;

    /*
     * Now, we want to setup our requested
     * window attributes for our OpenGL window.
     * We want *at least* 5 bits of red, green
     * and blue. We also want at least a 16-bit
     * depth buffer.
     *
     * The last thing we do is request a double
     * buffered window. '1' turns on double
     * buffering, '0' turns it off.
     *
     * Note that we do not use SDL_DOUBLEBUF in
     * the flags to SDL_SetVideoMode. That does
     * not affect the GL attribute state, only
     * the standard 2D blitting setup.
     */
    SDL_GL_SetAttribute( SDL_GL_RED_SIZE, 5 );
    SDL_GL_SetAttribute( SDL_GL_GREEN_SIZE, 5 );
    SDL_GL_SetAttribute( SDL_GL_BLUE_SIZE, 5 );
    SDL_GL_SetAttribute( SDL_GL_DEPTH_SIZE, 16 );
    SDL_GL_SetAttribute( SDL_GL_DOUBLEBUFFER, 1 );
    //SDL_GL_SetAttribute( SDL_GL_DOUBLEBUFFER, 1 );
    SDL_GL_SetAttribute( SDL_GL_STENCIL_SIZE, 5 );
    /*
     * We want to request that SDL provide us
     * with an OpenGL window, in a fullscreen
     * video mode.
     */
    flags = SDL_OPENGL | SDL_FULLSCREEN;

    /*
     * Set the video mode
     */
    if( SDL_SetVideoMode( width, height, bpp, flags ) == 0 ) {
        /* 
         * This could happen for a variety of reasons,
         * including DISPLAY not being set, the specified
         * resolution not being available, etc.
         */
        fprintf( stderr, "Video mode set failed: %s\n",
             SDL_GetError( ) );
        quit( 1 );
    }

    /*
     * At this point, we should have a properly setup
     * double-buffered window for use with OpenGL.
     */
    setup_opengl( width, height );

debugDisplay.InitFontTextures() ;

 icosphere.do_subdivide() ; // do_subdivide(icoRoot) ;
     icosphere.do_subdivide() ; 
      icosphere.do_subdivide() ; 
       icosphere.do_subdivide() ; 
        icosphere.do_subdivide() ; 
 
//particleCloud.dump() ;
  glEnable(GL_DEPTH_TEST) ;
  glDepthFunc(GL_LESS) ;

  glEnable (GL_LIGHTING); //enable the lighting

light0.setAmbient(0.0f,0.0f,0.0f,0.0f) ;
light0.setDiffuse(1,0,0,1) ;

light1.setAmbient(0.0f,0.0f,0.0f,0.0f) ;
light1.setDiffuse(0,1,0,1) ;


/*particleCloud.setMaxNumber(5000) ;
particleCloud.setEmitterType(1) ;
particleCloud.setEmitterOrigin({0,5,0}) ;
particleCloud.setEmitterSize(10) ;
particleCloud.setEmitterStrength(1) ;

particleFountain.setMaxNumber(1000) ;
particleFountain.setEmitterType(2) ;
particleFountain.setEmitterOrigin({-2,0,0}) ;
particleFountain.setEmitterSize(1) ;
particleFountain.setEmitterStrength(2) ;

particleFountain2.setMaxNumber(1000) ;
particleFountain2.setEmitterType(4) ;
particleFountain2.setEmitterOrigin({0,5,0}) ;
particleFountain2.setEmitterSize(1) ;
particleFountain2.setEmitterStrength(2) ;*/

particleBurster.setMaxNumber(5000) ;
particleBurster.setEmitterType(4) ;
//particleBurster.setEmitterOrigin({2,10,2}) ;
particleBurster.setEmitterOrigin({10*(GLfloat)cos(light_angle), 6 + 5*(GLfloat)sin(3*light_angle), 10*(GLfloat)sin(light_angle)}) ;  
particleBurster.setEmitterSize(1) ;
  //glEnable (GL_LIGHT0); //enable LIGHT0, our Diffuse Light
  glEnable (GL_LIGHT1); //enable LIGHT0, our Diffuse Light

  glShadeModel (GL_SMOOTH); //set the shader to smooth shader    

    SDL_ShowCursor(SDL_DISABLE); 
    SDL_WM_GrabInput( SDL_GRAB_ON );

  SDL_Event event;

  Uint32 old_time, current_time;
  float ftime;

// Need to initialize this here for event loop to work
current_time = SDL_GetTicks();

  SDL_PollEvent( &event ) ;

  /*
   * Now we want to begin our normal app process--
   * an event loop with a lot of redrawing.
   */
  while( 1 ) {
      /* Process incoming events. */

       old_time = current_time;
       current_time = SDL_GetTicks();
       ftime = (current_time - old_time) / 1000.0f; 
            debugDisplay.PrintAt(0,1,ftime) ;
                        debugDisplay.PrintAt(0,2,1/ftime) ;
      process_events( );

      animate(ftime) ;
      /* Draw the screen. */
      draw_screen( );

      debugDisplay.ClearTextDisplay() ;
  }

  /* Never reached. */
  return 0;
}
