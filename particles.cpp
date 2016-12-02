#include "constants.h"
#include "particles.h"

static point3D g = {0,-9.8,0} ;

float randomRange(float min, float max) {
	return min + (max - min) * (float) rand() / RAND_MAX  ; 
}

Particles::Particles() {

	root = 0 ;

	emitterAlive = true ;

	//TODO:  Set all member variables

	cout << sizeof(particle) << endl ;
//    maxParticles = max ;
/*	int i = 0 ;

	for (i=0 ; i < maxParticles ; i++) {
		emit() ; //add({randomRange(-10,10),randomRange(0,5),randomRange(-10,10)}) ;
	}*/
		//emit() ;

}



void Particles::emitBurster() {

	float r = emitterSize * (float) rand() / RAND_MAX,
	      p = 2 * PI * (float) rand() / RAND_MAX,
	      t = PI * (float) rand() / RAND_MAX ;
	      
	add({emitterOrigin.x, emitterOrigin.y, emitterOrigin.z}, 
		{r * (float)sin(t) * (float)cos(p),
		 r * (float)sin(t) * (float)sin(p),
		 r * (float)cos(t)}) ;	
}

void Particles::emitBursterExplosion() {

}

void Particles::emitFountainExplosion() {
	float r, a ;

	unsigned int i ;

	for (i = 0 ; i< maxParticles ; i++) {
		r = emitterSize * (float) rand() / RAND_MAX ;
		a = 2 * PI * (float) rand() / RAND_MAX ;
	
		add({emitterOrigin.x, emitterOrigin.y, emitterOrigin.z}, 
			{r * (float)sin(a),
			 5*randomRange(emitterStrength-0.5, emitterStrength+0.5),
			 r * (float)cos(a)}) ;
	}

}

void Particles::emitFountain() {

	float r = emitterSize * (float) rand() / RAND_MAX,
	      a = 2 * PI * (float) rand() / RAND_MAX ;

		add({emitterOrigin.x, emitterOrigin.y, emitterOrigin.z}, 
			{r * (float)sin(a),
			 5*randomRange(emitterStrength-0.5, emitterStrength+0.5),
			 r * (float)cos(a)}) ;
}

void Particles::emitRain() {

	float x = emitterSize*2, z = emitterSize*2 ;

	while (sqrt(x*x + z*z) > emitterSize) {
		x = randomRange(-emitterSize, emitterSize) ;
		z = randomRange(-emitterSize, emitterSize) ;
	}

	add({emitterOrigin.x + x,
		 emitterOrigin.y,
		 emitterOrigin.z + z}, {0,-1*randomRange(emitterStrength-0.05, emitterStrength+0.05),0}) ;

	/*float r = emitterSize * (float) rand() / RAND_MAX,
	      a = 2 * PI * (float) rand() / RAND_MAX ;



	add({emitterOrigin.x + r * (float)sin(a),
		 emitterOrigin.y + 0,
		 emitterOrigin.z + r * (float)cos(a)}, {0,-1*emitterStrength,0}) ;*/
}

void Particles::emit() {

	switch(emitterType) {
		case 1: emitRain() ;
				break ;
		case 2:	emitFountain() ;
				break ;
		case 3:	emitFountainExplosion() ;
				break ;
		case 4:	emitBurster() ;
				break ;
		case 5:	emitBursterExplosion() ;
				break ;
	}
	//emitRain() ;
}

void Particles::add(point3D p, point3D v0) {
 
  particle* newparticle = new particle ;
 
  newparticle->next = root ;

  newparticle->p0.x = p.x ; 
  newparticle->p0.y = p.y ;  
  newparticle->p0.z = p.z ;

  newparticle->v0.x = v0.x ; 
  newparticle->v0.y = v0.y ;  
  newparticle->v0.z = v0.z ;

  newparticle->mass = randomRange(0.003,0.005) ;
  newparticle->age = 0 ;

  root = newparticle ;

}

void Particles::dump() {
//	particle *curr = root->next ;
	particle *curr = root ;

	while (curr != 0) {
		cout << curr->p.x << "," << curr->p.y << "," << curr->p.z << endl;
	    curr = curr->next ;
  	}

}

bool Particles::killParticle(struct particle *curr) {

	//if (curr->p.y < 0) { 
	if (curr->age > 0.25) {
		return true ;
	} else {
		return false ;
	} 

	return false ;

}

void Particles::animate(float delta) {
  animate(delta, g) ;
}

void Particles::animate(float delta,
                        point3D F) {

	// Equations of Motion:
	//
	// v = at + v0
	//
	// r = r0 + v0t + 0.5 at2

	//particle *curr = root->next ;
	particle *curr = root, *prev, *next;

	if (count() < maxParticles) {
		emit() ;
	}

	while (curr != 0) {
		//curr->p.y = curr->p.y + g.y * delta * curr->mass ;

		curr->p.x = curr->p0.x + (curr->v0.x*curr->age) + 0.5 * F.x * curr->age * curr->age ; //* curr->mass ;
		curr->p.y = curr->p0.y + (curr->v0.y*curr->age) + 0.5 * F.y * curr->age * curr->age ; //* curr->mass ;		
		curr->p.z = curr->p0.z + (curr->v0.z*curr->age) + 0.5 * F.z * curr->age * curr->age ; //* curr->mass ;

//		curr->p.y = curr->p.y + 0.5 * F.y * curr->age * curr->age * curr->mass ;
		curr->age += delta ;

		next = curr->next ;
		prev = curr ;
		if (killParticle(curr)) {
		//		if (curr->p.y < 0) {
					curr->age = 0 ;
					curr->p0 = emitterOrigin ;
/*			if (root == curr) {
			    root->next = curr->next ;
			} else {
			    prev->next = curr->next ;
			}

			free(curr) ;*/
		} 

    	curr = next ;

	}

}

void Particles::drawEmitterBurster() {

	float f, s = 2*PI / 60 ;

	glBegin(GL_LINES) ;
	glColor3f(1,1,1) ;
	for (f = 0 ; f <= 2*PI ; f+= s) {
		glVertex3f(emitterOrigin.x + emitterSize*cos(f), emitterOrigin.y, emitterOrigin.z + emitterSize*sin(f)) ; 
		glVertex3f(emitterOrigin.x + emitterSize*cos(f+s), emitterOrigin.y, emitterOrigin.z + emitterSize*sin(f+s)) ;

		glVertex3f(emitterOrigin.x + emitterSize*cos(f), emitterOrigin.y + emitterSize*sin(f), emitterOrigin.z) ; 
		glVertex3f(emitterOrigin.x + emitterSize*cos(f+s), emitterOrigin.y + emitterSize*sin(f+s), emitterOrigin.z) ;

		glVertex3f(emitterOrigin.x, emitterOrigin.y + emitterSize*cos(f), emitterOrigin.z + emitterSize*sin(f)) ; 
		glVertex3f(emitterOrigin.x, emitterOrigin.y + emitterSize*cos(f+s), emitterOrigin.z + emitterSize*sin(f+s)) ;
	}
	glEnd() ;
}

void Particles::drawEmitterRain() {

	float f, s = 2*PI / 60 ;

	glBegin(GL_LINES) ;
	glColor3f(1,1,1) ;
	for (f = 0 ; f <= 2*PI ; f+= s) {
		glVertex3f(emitterOrigin.x + emitterSize*cos(f), emitterOrigin.y, emitterOrigin.z + emitterSize*sin(f)) ; 
		glVertex3f(emitterOrigin.x + emitterSize*cos(f+s), emitterOrigin.y, emitterOrigin.z + emitterSize*sin(f+s)) ;
	}
	glEnd() ;
}

void Particles::drawEmitterFountain() {

	float f, s = 2*PI / 20 ;
	glBegin(GL_LINES) ;
	glColor3f(1,1,1) ;
	for (f = 0 ; f <= 2*PI ; f+= s) {
		glVertex3f(emitterOrigin.x + emitterSize*cos(f), emitterOrigin.y+emitterStrength, emitterOrigin.z + emitterSize*sin(f)) ; 
		glVertex3f(emitterOrigin.x + emitterSize*cos(f+s), emitterOrigin.y+emitterStrength, emitterOrigin.z + emitterSize*sin(f+s)) ;

		glVertex3f(emitterOrigin.x, emitterOrigin.y, emitterOrigin.z) ; 
		glVertex3f(emitterOrigin.x + emitterSize*cos(f), emitterOrigin.y+emitterStrength, emitterOrigin.z + emitterSize*sin(f)) ; 
	}
	glEnd() ;

}

void Particles::drawEmitter() {

	switch(emitterType) {
		case 1: drawEmitterRain() ;
				break ;
		case 2:	drawEmitterFountain() ;
				break ;
		case 3:	drawEmitterFountain() ;
				break ;
		case 4:	drawEmitterBurster() ;
				break ;
		case 5:	drawEmitterBurster() ;
				break ;
	}

}

void Particles::draw() {

	particle *curr = root ;

	glBegin(GL_POINTS) ;
	glColor3f(1,1,1) ;
	while (curr != 0) {
		glVertex3f((GLfloat)curr->p.x,(GLfloat)curr->p.y,(GLfloat)curr->p.z) ;
    	curr = curr->next ;
	}

	glEnd() ;

}

unsigned int Particles::count() {
//	particle *curr = root->next ;
	particle *curr = root ;

	int c = 0 ;

	while (curr != 0) {
		c++ ;
    	curr = curr->next ;
	}

	return c ;
}

void Particles::setEmitterType(unsigned int t) {
	emitterType = t ;
}

void Particles::setMaxAge(float t) {
	maxAge = t ;
}

void Particles::setMaxNumber(unsigned int n) {
	maxParticles = n ;
}

void Particles::setMassRange(float min, float max) {
	minMass = min ;
	maxMass = max ;
}

void Particles::setEmitterOrigin(point3D o) {
	emitterOrigin = o ;
}

void Particles::setEmitterSize(float s) {
	emitterSize = s ;
}

void Particles::setEmitterStrength(float s) {
	emitterStrength = s ;
}

