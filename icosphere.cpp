#include "icosphere.h"

IcoSphere::IcoSphere(float scale,
                     struct point3D origin,
                     struct rgba colour) : Object(scale, origin, colour) {

  float tt = (1.0 + sqrt(5.0)) / 2.0;

  struct point3D p0  = normalize({ -1, tt, 0 }),
                 p1  = normalize({  1, tt, 0 }),
                 p2  = normalize({ -1, -tt, 0 }),
                 p3  = normalize({  1, -tt, 0 }),
                 p4  = normalize({  0, -1, tt }),
                 p5  = normalize({  0, 1, tt }),
                 p6  = normalize({  0, -1, -tt }),
                 p7  = normalize({  0, 1, -tt }),
                 p8  = normalize({ tt, 0, -1 }),
                 p9  = normalize({ tt, 0, 1 }),
                 p10 = normalize({ -tt, 0, -1 }),
                 p11 = normalize({ -tt, 0, 1 }) ; 

  addTriangle(p0, p11, p5);
  addTriangle(p0, p5, p1) ;
  addTriangle(p0, p1, p7);
  addTriangle(p0, p7, p10);
  addTriangle(p0, p10, p11);

  addTriangle(p1, p5, p9);
  addTriangle(p5, p11, p4);
  addTriangle(p11, p10, p2);
  addTriangle(p10, p7, p6);
  addTriangle(p7, p1, p8);

  addTriangle(p3, p9, p4);
  addTriangle(p3, p4, p2);
  addTriangle(p3, p2, p6) ;
  addTriangle(p3, p6, p8);
  addTriangle(p3, p8, p9);

  addTriangle(p4, p9, p5) ;
  addTriangle(p2, p4, p11);
  addTriangle(p6, p2, p10);
  addTriangle(p8, p6, p7);
  addTriangle(p9, p8, p1);

}

void IcoSphere::subdivide(node* t) {

  point3D a = normalize({(t->p1.x + t->p2.x)/2,(t->p1.y+t->p2.y)/2,(t->p1.z+t->p2.z)/2}),
          b = normalize({(t->p2.x + t->p3.x)/2,(t->p2.y+t->p3.y)/2,(t->p2.z+t->p3.z)/2}),
          c = normalize({(t->p3.x + t->p1.x)/2,(t->p3.y+t->p1.y)/2,(t->p3.z+t->p1.z)/2}) ;
/*  point3D a = {(t->p1.x + t->p2.x)/2,(t->p1.y+t->p2.y)/2,(t->p1.z+t->p2.z)/2},
          b = {(t->p2.x + t->p3.x)/2,(t->p2.y+t->p3.y)/2,(t->p2.z+t->p3.z)/2},
          c = {(t->p3.x + t->p1.x)/2,(t->p3.y+t->p1.y)/2,(t->p3.z+t->p1.z)/2} ;*/

  addTriangle(t->p1, a, c) ;
  addTriangle(a, t->p2, b) ;
  addTriangle(b, t->p3, c) ;
  addTriangle(a, b, c) ;

  deleteTriangle(t->id) ;
}

void IcoSphere::do_subdivide() {

  node *curr = root.next ;

  while (curr != 0) {
      subdivide(curr) ;
    curr = curr->next ;
  }

}
