#ifndef TYPESH
#define TYPESH

#include "datatypes.h"

struct node {
  unsigned int id ;
  struct node *next;

  struct point3D p1, p2, p3 ;
  struct point3D n ;
};

typedef struct {
  struct node *next ;
  unsigned int node_id;

  struct point3D origin ;
  float scale ;

  struct rgba colour ;

} Root ;

#endif