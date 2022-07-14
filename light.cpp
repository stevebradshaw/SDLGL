#include "light.h"


Light::Light(GLenum l) {
  light = l ;
  //glEnable(l) ;
}

void Light::addLightToScene() {
  glEnable(light) ;
  //GLfloat lightpos1[] = {10*(GLfloat)cos(light_angle+10), 5*(GLfloat)sin(3*light_angle+10), 10*(GLfloat)sin(light_angle+10), 1};
  glLightfv(light, GL_POSITION, lightpos);

  //GLfloat diffuse1[] = {0.0f, 1.0f, 0.0f , 1.0f};
  glLightfv(light, GL_DIFFUSE, diffuse);

  //GLfloat ambient1[] = {0.0f, 0.0f, 0.0f, 0.0f};
  glLightfv(light, GL_AMBIENT, ambient);

}

void Light::setPosition(GLfloat x, GLfloat y, GLfloat z, GLfloat w) {
  lightpos[0] = x ;
  lightpos[1] = y ;
  lightpos[2] = z ;
  lightpos[3] = w ;     
}

void Light::setAmbient(GLfloat r, GLfloat g, GLfloat b, GLfloat a) {
  ambient[0] = r ;
  ambient[1] = g ;
  ambient[2] = b ;
  ambient[3] = a ;     
}

void Light::setDiffuse(GLfloat r, GLfloat g, GLfloat b, GLfloat a) {
  diffuse[0] = r ;
  diffuse[1] = g ;
  diffuse[2] = b ;
  diffuse[3] = a ;     
}
