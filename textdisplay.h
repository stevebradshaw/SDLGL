#ifndef TEXTDISPLAYH
#define TEXTDISPLAYH

#include <SDL2/SDL.h>

#if defined(__APPLE__)
#include <GLUT/glut.h>
#else
#include <GL/glut.h>
#endif


#include <stdio.h>
#include <iostream>
#include <fstream>
#include <sstream>

using std::cout, std::endl, std::ifstream, std::ios, std::stringstream ;

class TextDisplay {

	private:
		GLuint gliFontTexture[128] ;

		//TODO:  sBuffer should be a pointer to enough space for the required text display
		char sBuffer[200][100] ;

		char *buffer ;

		float m_XOffset      = 0 ,
		      m_YOffset      = 0, 
		      m_Width,
		      m_Height,
		      m_HalfWidth,
		      m_HalfHeight,
		      m_LetterWidth  = 16,
		      m_LetterHeight = 16,
		      m_NumCharsX, 
		      m_NumCharsY ;

	public:

		TextDisplay() ;
		TextDisplay(int width, int height) ;
		void SetProperties(int width, int height) ;
		void InitFontTextures() ;
		void DrawTextDisplay() ;
		void ClearTextDisplay() ;
		void PrintAt(int x,
					 int y,
					 double num) ;
		void PrintAt(int  x,
					 int  y,
					 char const string[100]) ;
		void PrintAt(int x,
					 int y,
					 long int num) ;
	
} ;

#endif
