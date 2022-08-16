CC = g++
CFLAGS = -g -Wall -m64 -std=c++17 
CPPFLAGS = -g -Wall -m64 -std=c++17 
DEPS = datatypes.h types.h vector.h object.h icosphere.h grid.h textdisplay.h cube.h particles.h light.h

ifeq ($(shell uname), Darwin)
  LIBS = -framework OpenGL -framework GLUT
else
  LIBS = -lGL -lGLU -lglut -lSDL2
endif

sdl_gl: sdl_gl.o cube.o object.o vector.o grid.o textdisplay.o particles.o icosphere.o light.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS) 

%.o: %.cpp $(DEPS)
	$(CC) $(CFLAGS) -c $<

clean: FORCE
	-rm -f *.o *~ sdl_gl *core*

FORCE:
