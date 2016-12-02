#include "grid.h"

void draw_wire_gridX(float sz, float s, float x) {

  glDisable(GL_LIGHTING) ;
  
  int i= 0  ;

  float fx, c = sz / s ;
  for (fx = -c ; fx <= c ; fx += s) {

    if (i == 0) {
      glColor3f(0,1,0) ;
    }
    else {
      glColor3f(0,0.5,0) ;
    }

    i++ ;
    if (i > 4)
      i = 0 ;
    glBegin(GL_LINES) ;
      glVertex3f(x,fx,-c) ; glVertex3f(x,fx,c) ;
      glVertex3f(x,-c,fx) ; glVertex3f(x,c,fx) ;
    glEnd() ;   
  }
}

void draw_wire_gridY(float sz, float s, float y) {

  glDisable(GL_LIGHTING) ;
  
  int i= 0  ;

  float fx, c = sz / s ;
  for (fx = -c ; fx <= c ; fx += s) {

    if (i == 0) {
      glColor3f(0,1,0) ;
    }
    else {
      glColor3f(0,0.5,0) ;
    }

    i++ ;
    if (i > 4)
      i = 0 ;
    glBegin(GL_LINES) ;
      glVertex3f(fx,y,-c) ; glVertex3f(fx,y,c) ;
      glVertex3f(-c,y,fx) ; glVertex3f(c,y,fx) ;
    glEnd() ;   
  }
}

void draw_wire_gridZ(float sz, float s, float z) {

  glDisable(GL_LIGHTING) ;
  
  int i= 0  ;

  float fx, c = sz / s ;
  for (fx = -c ; fx <= c ; fx += s) {

    if (i == 0) {
      glColor3f(0,1,0) ;
    }
    else {
      glColor3f(0,0.5,0) ;
    }

    i++ ;
    if (i > 4)
      i = 0 ;
    glBegin(GL_LINES) ;
      glVertex3f(fx,-c,z) ; glVertex3f(fx,c,z) ;
      glVertex3f(-c,fx,z) ; glVertex3f(c,fx,z) ;
    glEnd() ;   
  }
}