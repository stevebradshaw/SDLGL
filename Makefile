CC = g++
CFLAGS = -g -Wall -m32 -std=c++11 `sdl-config --libs  --cflags`
CPPFLAGS = -g -Wall -m32 -std=c++11 `sdl-config --libs  --cflags`
DEPS = datatypes.h types.h vector.h object.h icosphere.h grid.h textdisplay.h cube.h particles.h

ifeq ($(shell uname), Darwin)
  LIBS = -framework OpenGL -framework GLUT
else
  LIBS = -lGL -lGLU -lglut
endif

sdl_gl: sdl_gl.o cube.o object.o vector.o grid.o textdisplay.o particles.o icosphere.o
	$(CC) $(CFLAGS) -o $@ $^ $(LIBS) 

%.o: %.cpp $(DEPS)
	$(CC) $(CFLAGS) -c $<

clean: FORCE
	-rm -f *.o *~ sdl_gl *core*

FORCE:
