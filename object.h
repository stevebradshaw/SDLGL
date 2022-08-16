#ifndef OBJECTH
#define OBJECTH

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include <SDL2/SDL.h>

#if defined(__APPLE__)
#include <GLUT/glut.h>
#else
#include <GL/glut.h>
#endif


#include "datatypes.h"
#include "types.h"
#include "vector.h"  


class Object {

protected:

  Root root ;

public:
  void addTriangle(struct point3D p1,
                    struct point3D p2,
                    struct point3D p3) ;

  void deleteTriangle(unsigned int id) ;

  void dump() ;

  void draw() ;
  void drawWireFrame() ;
  void drawNormals() ;

  void setPosition(struct point3D origin) ;

  void setColour(struct rgba colour) ;

  void setScale(float scale) ;

explicit Object() ;
 explicit Object(float scale,
         struct point3D origin,
         struct rgba colour) ;

} ;

#endif
