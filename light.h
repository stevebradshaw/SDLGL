#ifndef LIGHTH
#define LIGHTH


//#include <stdio.h>
//#include <iostream.h>


#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "datatypes.h"
#include "types.h"
#include "object.h"
#include "cube.h"

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

#endif
