//#include <iostream>

#include "object.h"

void Object::addTriangle(struct point3D p1,
                         struct point3D p2,
                         struct point3D p3) {

  struct point3D a, b, n ;

  // now calculate normal to triangle:
  //
  //  n = (v3 - v1) x (v3 - v2) / | (v3 - v1) x (v3 - v2)  |
  a.x = p3.x - p1.x ; a.y = p3.y - p1.y ; a.z = p3.z - p1.z ;
  b.x = p3.x - p2.x ; b.y = p3.y - p2.y ; b.z = p3.z - p2.z ;

  n.x = a.y*b.z - a.z*b.y ;
  n.y = a.z*b.x - a.x*b.z ;
  n.z = a.x*b.y - a.y*b.x ;
 
  node* newnode = new node ;
  newnode->id = root.node_id++ ;;
  newnode->next = root.next ;
  newnode->n = normalize(n) ;
  newnode->p1 = p1 ; 
  newnode->p2 = p2 ;  
  newnode->p3 = p3 ;

  root.next = newnode ;

}

void Object::deleteTriangle(unsigned int id) {

  // find node with id
  // point prev->next to curr->next
  // delete curr
  struct node *t = root.next, *p = 0 ;

  while (t != 0) {
    if (t->id == id) {
//		std::cout << "Found triangle to delete..." << std::endl ;
      // handle the case where its the first element of the list differently as
      // we need to repoint the root node
      if (root.next == t) {
//		  std::cout << "root.next == t" << std::endl ;
        root.next = t->next ;
	    t =0 ; 
      } else {
//		  std::cout << "p->next = t->next" << std::endl ;

        p->next = t->next ;
		t = 0 ;

      }
      free(t) ;
      t=0 ;
    } else {
      p = t ;
      //t = t->next ;
    }
//	std::cout << "go to next" << std::endl ;
	if ( t != 0) {
      t = t->next ;
	}
  }
}

void Object::dump() {

  node *curr = root.next ;
  int c = 0 ;

  while (curr != 0) {
    curr = curr->next ;
    c++ ;
  }

 printf("- Count: %i\n",c);

}

void Object::draw() {

  node *curr = root.next ;

  float s = root.scale,
        x = root.origin.x,
        y = root.origin.y,
        z = root.origin.z ; 

  glEnable(GL_LIGHTING) ;

  glColorMaterial ( GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE) ;
  glEnable(GL_COLOR_MATERIAL) ;

  glColor3f(root.colour.r, root.colour.g, root.colour.b) ;

  glPushMatrix() ;
  glMatrixMode(GL_MODELVIEW) ;
  glTranslatef(x,y,z) ;
  glBegin(GL_TRIANGLES) ;

  bool w = false ;
  while (curr != 0) {
 
 if (w) {
  glColor3f(1,1,1) ;
 } else {
    glColor3f(root.colour.r, root.colour.g, root.colour.b) ;
 }

// w = !w ;
    glNormal3f(curr->n.x,curr->n.y,curr->n.z) ;
    glVertex3f(s*curr->p1.x, s*curr->p1.y, s*curr->p1.z) ;

        glNormal3f(curr->n.x,curr->n.y,curr->n.z) ;
    glVertex3f(s*curr->p2.x, s*curr->p2.y, s*curr->p2.z) ;

        glNormal3f(curr->n.x,curr->n.y,curr->n.z) ;
    glVertex3f(s*curr->p3.x, s*curr->p3.y, s*curr->p3.z) ;

    curr = curr->next ;
  }

  glEnd() ;

  glPopMatrix() ;
}

void Object::drawWireFrame() {

  node *curr = root.next ;

  float s = root.scale,
        x = root.origin.x,
        y = root.origin.y,
        z = root.origin.z ; 

  glEnable(GL_LIGHTING) ;

  glColorMaterial ( GL_FRONT_AND_BACK, GL_AMBIENT_AND_DIFFUSE) ;
  glEnable(GL_COLOR_MATERIAL) ;

  glColor3f(root.colour.r, root.colour.g, root.colour.b) ;

  glPushMatrix() ;
  glMatrixMode(GL_MODELVIEW) ;
  glTranslatef(x,y,z) ;

  glDisable(GL_LIGHTING) ;
  glColor3f(1,1,1) ;
  while (curr != 0) {
 
    glBegin(GL_LINES) ;
    glVertex3f(s*curr->p1.x, s*curr->p1.y, s*curr->p1.z) ;
    glVertex3f(s*curr->p2.x, s*curr->p2.y, s*curr->p2.z) ;
    glVertex3f(s*curr->p2.x, s*curr->p2.y, s*curr->p2.z) ;
    glVertex3f(s*curr->p3.x, s*curr->p3.y, s*curr->p3.z) ;
    glVertex3f(s*curr->p3.x, s*curr->p3.y, s*curr->p3.z) ;
    glVertex3f(s*curr->p1.x, s*curr->p1.y, s*curr->p1.z) ;
	glEnd() ;

    curr = curr->next ;
  }


  glPopMatrix() ;
}

void Object::drawNormals() {
  node *curr = root.next ;
  glDisable(GL_LIGHTING) ;
  glColor3f(1,1,1) ;
  GLfloat cx, cy, cz ;
  
  while (curr != 0) {
	  cx = root.origin.x + (curr->p1.x + curr->p2.x + curr->p3.x) / 3 ;
	  cy = root.origin.y + (curr->p1.y + curr->p2.y + curr->p3.y) / 3 ;
	  cz = root.origin.z + (curr->p1.z + curr->p2.z + curr->p3.z) / 3 ;
	  glBegin(GL_LINES) ;
        glVertex3f(cx,cy,cz) ;
		glVertex3f(cx + 0.2 * curr->n.x, cy + 0.2 * curr->n.y, cz + 0.2 * curr->n.z) ;
	  glEnd() ;
    curr = curr->next ;
  }

}

void Object::setPosition(struct point3D origin) {
  root.origin = origin ;
}

void Object::setColour(struct rgba colour) {
  root.colour = colour ;
}

void Object::setScale(float scale) {
  root.scale = scale ;

}

Object::Object(float scale,
               struct point3D origin,
               struct rgba colour) {

//cout << "call object constructor" << endl ;
  root.node_id = 0 ;
  root.next = 0 ;
  setScale(scale) ;
  setColour(colour) ;
  setPosition(origin) ;

}

Object::Object() {
  root.node_id = 0 ;
  root.next = 0 ;
}
