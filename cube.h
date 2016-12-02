#ifndef CUBEH
#define CUBEH


//#include <stdio.h>
//#include <iostream.h>


#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "datatypes.h"
#include "types.h"
#include "object.h"

class Cube: public Object {

private:
	void addGeometry() ;
	
public:
	Cube() ;

	Cube(float scale,
	     struct point3D origin,
         struct rgba colour)  ;

} ;

#endif