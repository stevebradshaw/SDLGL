#ifndef GRIDH
#define GRIDH

#include <stdio.h>
#include <stdlib.h>
#include <math.h>


//#include <SDL2/SDL.h>

#if defined(__APPLE__)
#include <GLUT/glut.h>
#else
#include <GL/glut.h>
#endif

void draw_wire_gridX(float sz, float s, float x) ;
void draw_wire_gridY(float sz, float s, float y) ;
void draw_wire_gridZ(float sz, float s, float z) ;

void draw_gridY(float grid_size, float step_size, int graduations, float z) ;
#endif
