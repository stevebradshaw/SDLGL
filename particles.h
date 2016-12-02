#ifndef PARTICLESH
#define PARTICLESH

#include <SDL/SDL.h>

#include <stdio.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include <math.h>

using namespace std;

#if defined(__APPLE__)
#include <GLUT/glut.h>
#else
#include <GL/glut.h>
#endif

#include "datatypes.h"

struct particle {
	point3D p ;
	point3D p0 ;
	point3D v0 ;
	float mass ;
	float age ;

	struct particle *next ;
} ;

class Particles {

private:
//	particle p[10000] ;
	struct particle *root ;

	// emitter type
	//
	// 1 - rain, over an area centered on origin
	// 2 - fountain
	// 3 - fountain explosion
	// 4 - burster 
	// 5 - burster explosion
	unsigned int emitterType ;

	// max particles
	unsigned int maxParticles ;

	// max age
	float maxAge ;

	// mass range
	float minMass, maxMass ;

	// emmission rate per second
	int emitPerSecond ;

	// 
	float emitterSize ;

	//
	float emitterStrength ;

	// emitter lifetime
	// 
	// 0 - live forever
	// 1 - limited lifespan
	unsigned int emitterLifetime ;

	//
	bool emitterAlive ;



	point3D emitterOrigin ;

	void emitRain() ;
	void emitFountain() ;
	void emitFountainExplosion() ;
	void emitBurster() ;
	void emitBursterExplosion() ;
	void emit() ;

	void drawEmitterRain() ;
	void drawEmitterFountain() ;
	void drawEmitterBurster() ;

	bool killParticle(struct particle *curr) ;

public:

	Particles() ;
	void draw() ;
	void drawEmitter() ;
	void dump() ;
	void animate(float delta) ;
	void animate(float delta, point3D F) ;
	void add(point3D p, point3D v0) ;
	unsigned int count() ;
	
	// setters
	void setMaxAge(float t) ;
	void setMaxNumber(unsigned int n) ;
	void setMassRange(float min, float max) ;
	void setEmitterOrigin(point3D o) ;
	void setEmitterType(unsigned int t) ;
	void setEmitterSize(float s) ;
	void setEmitterStrength(float s) ;

	// getters


};

#endif
