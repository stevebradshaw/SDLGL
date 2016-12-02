#include "cube.h"

Cube::Cube() : Object() {


} 

Cube::Cube(float scale,
           struct point3D origin,
           struct rgba colour) : Object(scale, origin, colour) {
 
	addGeometry() ;
                            
}

void Cube::addGeometry() {
	struct point3D p0 = { -1, -1, -1 },
               p1 = {  1, -1, -1 },
               p2 = {  1, -1,  1 },
               p3 = { -1, -1,  1 },
               p4 = { -1,  1, -1 },
               p5 = {  1,  1, -1 },
               p6 = {  1,  1,  1 },
               p7 = { -1,  1,  1 } ;

	// front
	addTriangle(p7, p5, p4) ;
	addTriangle(p7, p6, p5) ;

	// bottom
	addTriangle(p1, p2, p0) ;
	addTriangle(p2, p3, p0) ;

	// front
	addTriangle(p5, p1, p0) ;
	addTriangle(p4, p5, p0) ;

	// back
	addTriangle(p7, p3, p2) ;
	addTriangle(p7, p2, p6) ;

	// left
	addTriangle(p3, p4, p0) ;
	addTriangle(p7, p4, p3) ;
	 
	// right 
	addTriangle(p1, p6, p2) ;
	addTriangle(p1, p5, p6) ;
}