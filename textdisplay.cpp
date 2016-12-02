#include "textdisplay.h"


TextDisplay::TextDisplay() {

}

TextDisplay::TextDisplay(int width, int height) {

	SetProperties(width, height) ;

}

void TextDisplay::SetProperties(int width, int height) {

	cout << m_NumCharsX << endl ;
	cout << m_NumCharsY << endl ;

	//*buffer = new char[100*100] ;

	m_Height = height ;
	m_Width = width ;
	m_HalfWidth    = m_Width / 2 ;
    m_HalfHeight   = m_Height / 2 ;
    m_NumCharsX    = m_Width / m_LetterWidth ; 
    m_NumCharsY    = m_Height / m_LetterHeight ;

}

void TextDisplay::InitFontTextures(void) {

	glGenTextures(127, gliFontTexture) ;

	// IMPROVEME:  Pass this procedure a 'base' name for the font to load, and the height and
	//             width of the font being loaded

	// IMPROVEME:  Make directory path relative to the directory Ste3D is run in
	char ch, name[50] ;
	char font[256][256] ;
	int asc = 0 ;
	GLubyte Texture16x16[16][16][4] ;
	strcpy(name,"textures/letters.raw") ;

	ifstream in(name, ios::in | ios::binary) ;
	
	for (int i=0 ; i<256;i++) {
		for (int j=0 ; j<256;j++) {
			in.get(ch) ;
			font[i][j] = ch;
		}
	}

	in.close() ;
	for (int i=0 ; i<16;i++) {
		for (int j=0 ; j<16;j++) {
			if (asc >= 32 && asc <=127) {
				for (int k=0;k<16;k++) {
					for (int l=0;l<16;l++) {
						ch = font[k+i*16][l+j*16] ;
						Texture16x16[k][l][3] = ch ;
						Texture16x16[k][l][0] = 255 ;
						Texture16x16[k][l][1] = 255 ;
						Texture16x16[k][l][2] = 255 ;
					}
				}
				glBindTexture(GL_TEXTURE_2D, gliFontTexture[asc]) ;
				glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_REPEAT) ;
				glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_REPEAT) ;
				glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST) ;
				glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST) ;
				glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, 16, 16, 0, GL_RGBA, GL_UNSIGNED_BYTE, Texture16x16) ;
			}
			asc++ ;
		}
	}
}


void TextDisplay::ClearTextDisplay() {
//void cTextDisplay::ClearDisplay() {
	for (int i=0; i<100; i++) {
		for (int j=0; j<100; j++) {
			sBuffer[i][j] = ' ' ;
		}
	}
}

void TextDisplay::PrintAt(int  x,
			int  y,
			char const string[100]) {
/*void cTextDisplay::PrintTab(int  x,
							int  y,
							char string[100]) {*/
	int len = strlen(string) ;
	for (int i=0;i<len;i++) {
		sBuffer[i+x][y] = string[i] ;
	}
}

/*void PrintAt(int x,
			 int y,
			 double num)
{
	char buf1[20], buf2[20], string[40] ;
	int dispx = (int)num ;
	int dp = (int)(fabs(num - dispx) * 1000000) ;
	itoa(dispx,buf1,10) ;
	itoa(dp,buf2,10) ;
	strcpy(string, buf1) ;
	strcat(string, ".") ;
	strcat(string, buf2) ;

	PrintAt(x,y,string) ;
}*/

void TextDisplay::PrintAt(int x,
			 int y,
			 long int num)
{

	stringstream ss;
	ss << num ;
	PrintAt(x,y, ss.str().c_str()) ;

}

void TextDisplay::PrintAt(int x,
			 int y,
			 double num)
{

	stringstream ss;
	ss << num ;
	PrintAt(x,y, ss.str().c_str()) ;

}

void TextDisplay::DrawTextDisplay() {
//void cTextDisplay::TextDisplay() //int x1, int y1, int x2, int y2)
//{
//		glViewport(m_XOffset, m_YOffset,m_Width - m_XOffset, m_Height - m_YOffset) ;
glViewport(0, 0,m_Width, m_Height) ;
	glDisable(GL_LIGHTING) ;
	// Enable alpha blending
	glEnable(GL_BLEND) ;
//	glBlendFunc(GL_SRC_ALPHA, GL_DST_ALPHA) ;

//glEnable(GL_BLEND);
glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
//SDL_SetTextureBlendMode()
	// Save projection and model matrices
	glMatrixMode(GL_PROJECTION);
	glPushMatrix() ;
	glMatrixMode(GL_MODELVIEW);
	glPushMatrix() ;

	// Set up OpenGL for psuedo-2d display
	glLoadIdentity();
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	glOrtho( -m_HalfWidth, m_HalfWidth, -m_HalfHeight, m_HalfHeight, -100, 100) ;
	glEnable(GL_TEXTURE_2D) ;
	glColor3f(1,1,1) ;

	int left, right, top, bottom ;
	for (int xp=0;xp<m_NumCharsX;xp++) {
		for (int yp=0;yp<m_NumCharsY;yp++) {
			if (sBuffer[xp][yp] != 32) {
				left   = (int) (-m_HalfWidth  + m_LetterWidth  * xp) ;
				top    = (int) ( m_HalfHeight - m_LetterHeight * yp) ;
				right  = (int) (-m_HalfWidth  + m_LetterWidth  * (xp+1)) ;
				bottom = (int) ( m_HalfHeight - m_LetterHeight * (yp+1)) ;
				glBindTexture(GL_TEXTURE_2D, gliFontTexture[(int)sBuffer[xp][yp]]);
				//glBindTexture(GL_TEXTURE_2D, gliFontTexture[65]);
				glBegin(GL_QUADS) ;
					glTexCoord2d(0,1) ; glVertex3d(  left, bottom, 0) ;
					glTexCoord2d(1,1) ; glVertex3d( right, bottom, 0) ;
					glTexCoord2d(1,0) ; glVertex3d( right,    top, 0) ;
					glTexCoord2d(0,0) ; glVertex3d(  left,    top, 0) ;
				glEnd() ;
			}
		}
	}

	// Retrieve projection and model matrices
	glMatrixMode(GL_MODELVIEW);
	glPopMatrix() ;
	glMatrixMode(GL_PROJECTION);
	glPopMatrix() ;
	glMatrixMode(GL_MODELVIEW);

	// Disable alpha blending
	glDisable(GL_BLEND) ;

	glViewport(0,0,m_Width,m_Height) ;
	glEnable(GL_LIGHTING) ;
}