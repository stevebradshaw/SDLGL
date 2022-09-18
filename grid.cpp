#include "grid.h"

#include <iostream>

void draw_wire_gridX(float sz, float s, float x)
{

  glDisable(GL_LIGHTING);

  int i = 0;

  float fx, c = sz / s;
  for (fx = -c; fx <= c; fx += s)
  {

    if (i == 0)
    {
      glColor3f(0, 1, 0);
    }
    else
    {
      glColor3f(0, 0.5, 0);
    }

    i++;
    if (i > 4)
      i = 0;
    glBegin(GL_LINES);
    glVertex3f(x, fx, -c);
    glVertex3f(x, fx, c);
    glVertex3f(x, -c, fx);
    glVertex3f(x, c, fx);
    glEnd();
  }
}

//  draw_wire_gridY(10, 0.5, 0);
void draw_wire_gridY(float sz, float s, float y)
{

  glDisable(GL_LIGHTING);

  int i = 0;

  float fx, c = sz / s;

  //  std::cout << "c = " << c << ", s = " << s << "\n" ;

  for (fx = -c; fx <= c; fx += s)
  {

    if (i == 0)
    {
      glColor3f(0, 1, 0);
    }
    else
    {
      glColor3f(0, 0.5, 0);
    }

    i++;
    if (i > 3)
      i = 0;
    glBegin(GL_LINES);
    glVertex3f(fx, y, -c);
    glVertex3f(fx, y, c);
    glVertex3f(-c, y, fx);
    glVertex3f(c, y, fx);
    glEnd();
  }

  glColor3f(0, 0, 1);
  glBegin(GL_LINES);
  glVertex3f(-2, 0.1, 0);
  glVertex3f(2, 0.1, 0);
  glVertex3f(0, 0.1, -2);
  glVertex3f(0, 0.1, 2);
  glEnd();
}

void draw_gridY(float grid_size, float step_size, int graduations, float y)
{

  glDisable(GL_LIGHTING);

  float x, z, half_grid = grid_size / 2, st = step_size / graduations;
  float y1, y2, y3, y4;
  for (x = -half_grid; x <= half_grid; x += st)
  {

    for (z = -half_grid; z <= half_grid; z += st)
    {

      y1 = (x * x + z * z) / 20;
      y2 = ((x + st) * (x + st) + z * z) / 20;
      y3 = ((x + st) * (x + st) + (z + st) * (z + st)) / 20;
      y4 = (x * x + (z + st) * (z + st)) / 20;

      glBegin(GL_LINES);
      glVertex3f(x, y1, z);
      glVertex3f(x + st, y2, z);
      glVertex3f(x + st, y2, z);
      glVertex3f(x + st, y3, z + st);
      glVertex3f(x + st, y3, z + st);
      glVertex3f(x, y4, z + st);
      glVertex3f(x, y4, z + st);
      glVertex3f(x, y1, z);
      glEnd();

      /*glBegin(GL_LINES) ;
            glVertex3f(x,y,z) ; glVertex3f(x+st,y,z) ;
            glVertex3f(x+st,y,z) ; glVertex3f(x+st,y,z+st) ;
          glVertex3f(x+st,y,z+st) ; glVertex3f(x,y,z+st) ;
          glVertex3f(x,y,z+st) ; glVertex3f(x,y,z) ;
      glEnd() ;*/
    }
  }
}

void draw_wire_gridZ(float sz, float s, float z)
{

  glDisable(GL_LIGHTING);

  int i = 0;

  float fx, c = sz / s;
  for (fx = -c; fx <= c; fx += s)
  {

    if (i == 0)
    {
      glColor3f(0, 1, 0);
    }
    else
    {
      glColor3f(0, 0.5, 0);
    }

    i++;
    if (i > 4)
      i = 0;
    glBegin(GL_LINES);
    glVertex3f(fx, -c, z);
    glVertex3f(fx, c, z);
    glVertex3f(-c, fx, z);
    glVertex3f(c, fx, z);
    glEnd();
  }
}
