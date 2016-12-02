#ifndef ICOSPHEREH
#define ICOSPHERE

#include <math.h>

#include "datatypes.h"
#include "types.h"

#include "vector.h"
#include "object.h"

class IcoSphere: public Object {

  void subdivide(node* t) ;

public:

  void do_subdivide() ;

  IcoSphere(float scale,
             struct point3D origin,
             struct rgba colour) ;
} ;

#endif