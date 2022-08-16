#include "vector.h"


struct point3D normalize(struct point3D p) {

  float l = sqrt(p.x * p.x + p.y * p.y + p.z * p.z) ;

  return {p.x/l, p.y/l, p.z/l} ; //n ;

}

struct point3D vector(struct point3D u, struct point3D v) {
  return {u.x - v.x, u.y - v.y, u.z - v.z} ;
}


float length(struct point3D u) {
  return sqrt(u.x*u.x + u.y*u.y + u.z*u.z) ;
}

float dot(struct point3D u, struct point3D v) {

  return (u.x*v.x + u.y*v.y + u.z*v.z) / (length(u) * length(v)) ;
}

