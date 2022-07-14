g++ -g -Wall -m64 -std=c++11 `sdl-config --libs  --cflags` -c sdl_gl.cpp
In file included from /usr/include/SDL/SDL_main.h:26,
                 from /usr/include/SDL/SDL.h:30,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_stdinc.h:94:21: error: ‘SDL_FALSE’ conflicts with a previous declaration
   94 |         SDL_FALSE = 0,
      |                     ^
In file included from /usr/include/SDL2/SDL_main.h:25,
                 from /usr/include/SDL2/SDL.h:32,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_stdinc.h:180:5: note: previous declaration ‘SDL_bool SDL_FALSE’
  180 |     SDL_FALSE = 0,
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_main.h:26,
                 from /usr/include/SDL/SDL.h:30,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_stdinc.h:95:21: error: ‘SDL_TRUE’ conflicts with a previous declaration
   95 |         SDL_TRUE  = 1
      |                     ^
In file included from /usr/include/SDL2/SDL_main.h:25,
                 from /usr/include/SDL2/SDL.h:32,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_stdinc.h:181:5: note: previous declaration ‘SDL_bool SDL_TRUE’
  181 |     SDL_TRUE = 1
      |     ^~~~~~~~
In file included from /usr/include/SDL/SDL_main.h:26,
                 from /usr/include/SDL/SDL.h:30,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_stdinc.h:96:3: error: conflicting declaration ‘typedef enum SDL_bool SDL_bool’
   96 | } SDL_bool;
      |   ^~~~~~~~
In file included from /usr/include/SDL2/SDL_main.h:25,
                 from /usr/include/SDL2/SDL.h:32,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_stdinc.h:182:3: note: previous declaration as ‘typedef enum SDL_bool SDL_bool’
  182 | } SDL_bool;
      |   ^~~~~~~~
In file included from /usr/include/SDL/SDL_main.h:26,
                 from /usr/include/SDL/SDL.h:30,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_stdinc.h:147:9: error: ‘DUMMY_ENUM_VALUE’ conflicts with a previous declaration
  147 |         DUMMY_ENUM_VALUE
      |         ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_main.h:25,
                 from /usr/include/SDL2/SDL.h:32,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_stdinc.h:384:5: note: previous declaration ‘SDL_DUMMY_ENUM DUMMY_ENUM_VALUE’
  384 |     DUMMY_ENUM_VALUE
      |     ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_main.h:26,
                 from /usr/include/SDL/SDL.h:30,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_stdinc.h:148:3: error: conflicting declaration ‘typedef enum SDL_DUMMY_ENUM SDL_DUMMY_ENUM’
  148 | } SDL_DUMMY_ENUM;
      |   ^~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_main.h:25,
                 from /usr/include/SDL2/SDL.h:32,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_stdinc.h:385:3: note: previous declaration as ‘typedef enum SDL_DUMMY_ENUM SDL_DUMMY_ENUM’
  385 | } SDL_DUMMY_ENUM;
      |   ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_main.h:26,
                 from /usr/include/SDL/SDL.h:30,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_stdinc.h:605:32: error: conflicting declaration of C function ‘size_t SDL_iconv(iconv_t, const char**, size_t*, char**, size_t*)’
  605 | extern DECLSPEC size_t SDLCALL SDL_iconv(SDL_iconv_t cd, const char **inbuf, size_t *inbytesleft, char **outbuf, size_t *outbytesleft);
      |                                ^~~~~~~~~
In file included from /usr/include/SDL2/SDL_main.h:25,
                 from /usr/include/SDL2/SDL.h:32,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_stdinc.h:640:32: note: previous declaration ‘size_t SDL_iconv(SDL_iconv_t, const char**, size_t*, char**, size_t*)’
  640 | extern DECLSPEC size_t SDLCALL SDL_iconv(SDL_iconv_t cd, const char **inbuf,
      |                                ^~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:32,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_error.h:43:30: error: conflicting declaration of C function ‘void SDL_SetError(const char*, ...)’
   43 | extern DECLSPEC void SDLCALL SDL_SetError(const char *fmt, ...);
      |                              ^~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:34,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_error.h:66:29: note: previous declaration ‘int SDL_SetError(const char*, ...)’
   66 | extern DECLSPEC int SDLCALL SDL_SetError(SDL_PRINTF_FORMAT_STRING const char *fmt, ...) SDL_PRINTF_VARARG_FUNC(1);
      |                             ^~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:32,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_error.h:44:32: error: conflicting declaration of C function ‘char* SDL_GetError()’
   44 | extern DECLSPEC char * SDLCALL SDL_GetError(void);
      |                                ^~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:34,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_error.h:103:37: note: previous declaration ‘const char* SDL_GetError()’
  103 | extern DECLSPEC const char *SDLCALL SDL_GetError(void);
      |                                     ^~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:32,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_error.h:56:9: error: ‘SDL_ENOMEM’ conflicts with a previous declaration
   56 |         SDL_ENOMEM,
      |         ^~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:34,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_error.h:144:5: note: previous declaration ‘SDL_errorcode SDL_ENOMEM’
  144 |     SDL_ENOMEM,
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:32,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_error.h:57:9: error: ‘SDL_EFREAD’ conflicts with a previous declaration
   57 |         SDL_EFREAD,
      |         ^~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:34,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_error.h:145:5: note: previous declaration ‘SDL_errorcode SDL_EFREAD’
  145 |     SDL_EFREAD,
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:32,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_error.h:58:9: error: ‘SDL_EFWRITE’ conflicts with a previous declaration
   58 |         SDL_EFWRITE,
      |         ^~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:34,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_error.h:146:5: note: previous declaration ‘SDL_errorcode SDL_EFWRITE’
  146 |     SDL_EFWRITE,
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:32,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_error.h:59:9: error: ‘SDL_EFSEEK’ conflicts with a previous declaration
   59 |         SDL_EFSEEK,
      |         ^~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:34,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_error.h:147:5: note: previous declaration ‘SDL_errorcode SDL_EFSEEK’
  147 |     SDL_EFSEEK,
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:32,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_error.h:60:9: error: ‘SDL_UNSUPPORTED’ conflicts with a previous declaration
   60 |         SDL_UNSUPPORTED,
      |         ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:34,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_error.h:148:5: note: previous declaration ‘SDL_errorcode SDL_UNSUPPORTED’
  148 |     SDL_UNSUPPORTED,
      |     ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:32,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_error.h:61:9: error: ‘SDL_LASTERROR’ conflicts with a previous declaration
   61 |         SDL_LASTERROR
      |         ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:34,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_error.h:149:5: note: previous declaration ‘SDL_errorcode SDL_LASTERROR’
  149 |     SDL_LASTERROR
      |     ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:32,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_error.h:62:3: error: conflicting declaration ‘typedef enum SDL_errorcode SDL_errorcode’
   62 | } SDL_errorcode;
      |   ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:34,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_error.h:150:3: note: previous declaration as ‘typedef enum SDL_errorcode SDL_errorcode’
  150 | } SDL_errorcode;
      |   ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:32,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_error.h:63:30: error: conflicting declaration of C function ‘void SDL_Error(SDL_errorcode)’
   63 | extern DECLSPEC void SDLCALL SDL_Error(SDL_errorcode code);
      |                              ^~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:34,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_error.h:152:29: note: previous declaration ‘int SDL_Error(SDL_errorcode)’
  152 | extern DECLSPEC int SDLCALL SDL_Error(SDL_errorcode code);
      |                             ^~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:35,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_thread.h:88:38: error: conflicting declaration of C function ‘SDL_Thread* SDL_CreateThread(int (*)(void*), void*)’
   88 | extern DECLSPEC SDL_Thread * SDLCALL SDL_CreateThread(int (SDLCALL *fn)(void *), void *data);
      |                                      ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:37,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_thread.h:208:1: note: previous declaration ‘SDL_Thread* SDL_CreateThread(SDL_ThreadFunction, const char*, void*)’
  208 | SDL_CreateThread(SDL_ThreadFunction fn, const char *name, void *data);
      | ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:35,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_thread.h:92:32: error: conflicting declaration of C function ‘Uint32 SDL_ThreadID()’
   92 | extern DECLSPEC Uint32 SDLCALL SDL_ThreadID(void);
      |                                ^~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:37,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_thread.h:290:38: note: previous declaration ‘SDL_threadID SDL_ThreadID()’
  290 | extern DECLSPEC SDL_threadID SDLCALL SDL_ThreadID(void);
      |                                      ^~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:35,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_thread.h:97:32: error: conflicting declaration of C function ‘Uint32 SDL_GetThreadID(SDL_Thread*)’
   97 | extern DECLSPEC Uint32 SDLCALL SDL_GetThreadID(SDL_Thread *thread);
      |                                ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:37,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_thread.h:307:38: note: previous declaration ‘SDL_threadID SDL_GetThreadID(SDL_Thread*)’
  307 | extern DECLSPEC SDL_threadID SDLCALL SDL_GetThreadID(SDL_Thread * thread);
      |                                      ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:36,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_rwops.h:42:16: error: redefinition of ‘struct SDL_RWops’
   42 | typedef struct SDL_RWops {
      |                ^~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:38,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_rwops.h:55:16: note: previous definition of ‘struct SDL_RWops’
   55 | typedef struct SDL_RWops
      |                ^~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:36,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_rwops.h:93:3: error: conflicting declaration ‘typedef int SDL_RWops’
   93 | } SDL_RWops;
      |   ^~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:38,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_rwops.h:149:3: note: previous declaration as ‘typedef struct SDL_RWops SDL_RWops’
  149 | } SDL_RWops;
      |   ^~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:36,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_rwops.h:102:37: error: conflicting declaration of C function ‘SDL_RWops* SDL_RWFromFP(FILE*, int)’
  102 | extern DECLSPEC SDL_RWops * SDLCALL SDL_RWFromFP(FILE *fp, int autoclose);
      |                                     ^~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:38,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_rwops.h:225:36: note: previous declaration ‘SDL_RWops* SDL_RWFromFP(FILE*, SDL_bool)’
  225 | extern DECLSPEC SDL_RWops *SDLCALL SDL_RWFromFP(FILE * fp, SDL_bool autoclose);
      |                                    ^~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:36,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_rwops.h:141:29: error: conflicting declaration of C function ‘int SDL_WriteLE16(SDL_RWops*, Uint16)’
  141 | extern DECLSPEC int SDLCALL SDL_WriteLE16(SDL_RWops *dst, Uint16 value);
      |                             ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:38,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_rwops.h:757:32: note: previous declaration ‘size_t SDL_WriteLE16(SDL_RWops*, Uint16)’
  757 | extern DECLSPEC size_t SDLCALL SDL_WriteLE16(SDL_RWops * dst, Uint16 value);
      |                                ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:36,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_rwops.h:142:29: error: conflicting declaration of C function ‘int SDL_WriteBE16(SDL_RWops*, Uint16)’
  142 | extern DECLSPEC int SDLCALL SDL_WriteBE16(SDL_RWops *dst, Uint16 value);
      |                             ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:38,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_rwops.h:774:32: note: previous declaration ‘size_t SDL_WriteBE16(SDL_RWops*, Uint16)’
  774 | extern DECLSPEC size_t SDLCALL SDL_WriteBE16(SDL_RWops * dst, Uint16 value);
      |                                ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:36,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_rwops.h:143:29: error: conflicting declaration of C function ‘int SDL_WriteLE32(SDL_RWops*, Uint32)’
  143 | extern DECLSPEC int SDLCALL SDL_WriteLE32(SDL_RWops *dst, Uint32 value);
      |                             ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:38,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_rwops.h:792:32: note: previous declaration ‘size_t SDL_WriteLE32(SDL_RWops*, Uint32)’
  792 | extern DECLSPEC size_t SDLCALL SDL_WriteLE32(SDL_RWops * dst, Uint32 value);
      |                                ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:36,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_rwops.h:144:29: error: conflicting declaration of C function ‘int SDL_WriteBE32(SDL_RWops*, Uint32)’
  144 | extern DECLSPEC int SDLCALL SDL_WriteBE32(SDL_RWops *dst, Uint32 value);
      |                             ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:38,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_rwops.h:809:32: note: previous declaration ‘size_t SDL_WriteBE32(SDL_RWops*, Uint32)’
  809 | extern DECLSPEC size_t SDLCALL SDL_WriteBE32(SDL_RWops * dst, Uint32 value);
      |                                ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:36,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_rwops.h:145:29: error: conflicting declaration of C function ‘int SDL_WriteLE64(SDL_RWops*, Uint64)’
  145 | extern DECLSPEC int SDLCALL SDL_WriteLE64(SDL_RWops *dst, Uint64 value);
      |                             ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:38,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_rwops.h:827:32: note: previous declaration ‘size_t SDL_WriteLE64(SDL_RWops*, Uint64)’
  827 | extern DECLSPEC size_t SDLCALL SDL_WriteLE64(SDL_RWops * dst, Uint64 value);
      |                                ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_audio.h:36,
                 from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_rwops.h:146:29: error: conflicting declaration of C function ‘int SDL_WriteBE64(SDL_RWops*, Uint64)’
  146 | extern DECLSPEC int SDLCALL SDL_WriteBE64(SDL_RWops *dst, Uint64 value);
      |                             ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_audio.h:38,
                 from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_rwops.h:844:32: note: previous declaration ‘size_t SDL_WriteBE64(SDL_RWops*, Uint64)’
  844 | extern DECLSPEC size_t SDLCALL SDL_WriteBE64(SDL_RWops * dst, Uint64 value);
      |                                ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_audio.h:74:16: error: redefinition of ‘struct SDL_AudioSpec’
   74 | typedef struct SDL_AudioSpec {
      |                ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_audio.h:180:16: note: previous definition of ‘struct SDL_AudioSpec’
  180 | typedef struct SDL_AudioSpec
      |                ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_audio.h:93:3: error: conflicting declaration ‘typedef int SDL_AudioSpec’
   93 | } SDL_AudioSpec;
      |   ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_audio.h:191:3: note: previous declaration as ‘typedef struct SDL_AudioSpec SDL_AudioSpec’
  191 | } SDL_AudioSpec;
      |   ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_audio.h:126:16: error: redefinition of ‘struct SDL_AudioCVT’
  126 | typedef struct SDL_AudioCVT {
      |                ^~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_audio.h:231:16: note: previous definition of ‘struct SDL_AudioCVT’
  231 | typedef struct SDL_AudioCVT
      |                ^~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_audio.h:138:3: error: conflicting declaration ‘typedef int SDL_AudioCVT’
  138 | } SDL_AudioCVT;
      |   ^~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_audio.h:244:23: note: previous declaration as ‘typedef struct SDL_AudioCVT SDL_AudioCVT’
  244 | } SDL_AUDIOCVT_PACKED SDL_AudioCVT;
      |                       ^~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_audio.h:181:29: error: ‘SDL_AUDIO_STOPPED’ conflicts with a previous declaration
  181 |         SDL_AUDIO_STOPPED = 0,
      |                             ^
In file included from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_audio.h:650:5: note: previous declaration ‘SDL_AudioStatus SDL_AUDIO_STOPPED’
  650 |     SDL_AUDIO_STOPPED = 0,
      |     ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_audio.h:182:9: error: ‘SDL_AUDIO_PLAYING’ conflicts with a previous declaration
  182 |         SDL_AUDIO_PLAYING,
      |         ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_audio.h:651:5: note: previous declaration ‘SDL_AudioStatus SDL_AUDIO_PLAYING’
  651 |     SDL_AUDIO_PLAYING,
      |     ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_audio.h:183:9: error: ‘SDL_AUDIO_PAUSED’ conflicts with a previous declaration
  183 |         SDL_AUDIO_PAUSED
      |         ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_audio.h:652:5: note: previous declaration ‘SDL_AudioStatus SDL_AUDIO_PAUSED’
  652 |     SDL_AUDIO_PAUSED
      |     ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:32,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_audio.h:187:41: error: conflicting declaration of C function ‘SDL_audiostatus SDL_GetAudioStatus()’
  187 | extern DECLSPEC SDL_audiostatus SDLCALL SDL_GetAudioStatus(void);
      |                                         ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:36,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_audio.h:673:41: note: previous declaration ‘SDL_AudioStatus SDL_GetAudioStatus()’
  673 | extern DECLSPEC SDL_AudioStatus SDLCALL SDL_GetAudioStatus(void);
      |                                         ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:36:35: error: ‘SDLK_UNKNOWN’ conflicts with a previous declaration
   36 |         SDLK_UNKNOWN            = 0,
      |                                   ^
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:52:5: note: previous declaration ‘SDL_KeyCode SDLK_UNKNOWN’
   52 |     SDLK_UNKNOWN = 0,
      |     ^~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:38:35: error: ‘SDLK_BACKSPACE’ conflicts with a previous declaration
   38 |         SDLK_BACKSPACE          = 8,
      |                                   ^
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:56:5: note: previous declaration ‘SDL_KeyCode SDLK_BACKSPACE’
   56 |     SDLK_BACKSPACE = '\b',
      |     ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:39:35: error: ‘SDLK_TAB’ conflicts with a previous declaration
   39 |         SDLK_TAB                = 9,
      |                                   ^
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:57:5: note: previous declaration ‘SDL_KeyCode SDLK_TAB’
   57 |     SDLK_TAB = '\t',
      |     ^~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:40:35: error: ‘SDLK_CLEAR’ conflicts with a previous declaration
   40 |         SDLK_CLEAR              = 12,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:212:5: note: previous declaration ‘SDL_KeyCode SDLK_CLEAR’
  212 |     SDLK_CLEAR = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_CLEAR),
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:41:35: error: ‘SDLK_RETURN’ conflicts with a previous declaration
   41 |         SDLK_RETURN             = 13,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:54:5: note: previous declaration ‘SDL_KeyCode SDLK_RETURN’
   54 |     SDLK_RETURN = '\r',
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:42:35: error: ‘SDLK_PAUSE’ conflicts with a previous declaration
   42 |         SDLK_PAUSE              = 19,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:146:5: note: previous declaration ‘SDL_KeyCode SDLK_PAUSE’
  146 |     SDLK_PAUSE = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_PAUSE),
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:43:35: error: ‘SDLK_ESCAPE’ conflicts with a previous declaration
   43 |         SDLK_ESCAPE             = 27,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:55:5: note: previous declaration ‘SDL_KeyCode SDLK_ESCAPE’
   55 |     SDLK_ESCAPE = '\x1B',
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:44:35: error: ‘SDLK_SPACE’ conflicts with a previous declaration
   44 |         SDLK_SPACE              = 32,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:58:5: note: previous declaration ‘SDL_KeyCode SDLK_SPACE’
   58 |     SDLK_SPACE = ' ',
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:45:35: error: ‘SDLK_EXCLAIM’ conflicts with a previous declaration
   45 |         SDLK_EXCLAIM            = 33,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:59:5: note: previous declaration ‘SDL_KeyCode SDLK_EXCLAIM’
   59 |     SDLK_EXCLAIM = '!',
      |     ^~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:46:35: error: ‘SDLK_QUOTEDBL’ conflicts with a previous declaration
   46 |         SDLK_QUOTEDBL           = 34,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:60:5: note: previous declaration ‘SDL_KeyCode SDLK_QUOTEDBL’
   60 |     SDLK_QUOTEDBL = '"',
      |     ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:47:35: error: ‘SDLK_HASH’ conflicts with a previous declaration
   47 |         SDLK_HASH               = 35,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:61:5: note: previous declaration ‘SDL_KeyCode SDLK_HASH’
   61 |     SDLK_HASH = '#',
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:48:35: error: ‘SDLK_DOLLAR’ conflicts with a previous declaration
   48 |         SDLK_DOLLAR             = 36,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:63:5: note: previous declaration ‘SDL_KeyCode SDLK_DOLLAR’
   63 |     SDLK_DOLLAR = '$',
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:49:35: error: ‘SDLK_AMPERSAND’ conflicts with a previous declaration
   49 |         SDLK_AMPERSAND          = 38,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:64:5: note: previous declaration ‘SDL_KeyCode SDLK_AMPERSAND’
   64 |     SDLK_AMPERSAND = '&',
      |     ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:50:35: error: ‘SDLK_QUOTE’ conflicts with a previous declaration
   50 |         SDLK_QUOTE              = 39,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:65:5: note: previous declaration ‘SDL_KeyCode SDLK_QUOTE’
   65 |     SDLK_QUOTE = '\'',
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:51:35: error: ‘SDLK_LEFTPAREN’ conflicts with a previous declaration
   51 |         SDLK_LEFTPAREN          = 40,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:66:5: note: previous declaration ‘SDL_KeyCode SDLK_LEFTPAREN’
   66 |     SDLK_LEFTPAREN = '(',
      |     ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:52:35: error: ‘SDLK_RIGHTPAREN’ conflicts with a previous declaration
   52 |         SDLK_RIGHTPAREN         = 41,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:67:5: note: previous declaration ‘SDL_KeyCode SDLK_RIGHTPAREN’
   67 |     SDLK_RIGHTPAREN = ')',
      |     ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:53:35: error: ‘SDLK_ASTERISK’ conflicts with a previous declaration
   53 |         SDLK_ASTERISK           = 42,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:68:5: note: previous declaration ‘SDL_KeyCode SDLK_ASTERISK’
   68 |     SDLK_ASTERISK = '*',
      |     ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:54:35: error: ‘SDLK_PLUS’ conflicts with a previous declaration
   54 |         SDLK_PLUS               = 43,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:69:5: note: previous declaration ‘SDL_KeyCode SDLK_PLUS’
   69 |     SDLK_PLUS = '+',
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:55:35: error: ‘SDLK_COMMA’ conflicts with a previous declaration
   55 |         SDLK_COMMA              = 44,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:70:5: note: previous declaration ‘SDL_KeyCode SDLK_COMMA’
   70 |     SDLK_COMMA = ',',
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:56:35: error: ‘SDLK_MINUS’ conflicts with a previous declaration
   56 |         SDLK_MINUS              = 45,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:71:5: note: previous declaration ‘SDL_KeyCode SDLK_MINUS’
   71 |     SDLK_MINUS = '-',
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:57:35: error: ‘SDLK_PERIOD’ conflicts with a previous declaration
   57 |         SDLK_PERIOD             = 46,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:72:5: note: previous declaration ‘SDL_KeyCode SDLK_PERIOD’
   72 |     SDLK_PERIOD = '.',
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:58:35: error: ‘SDLK_SLASH’ conflicts with a previous declaration
   58 |         SDLK_SLASH              = 47,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:73:5: note: previous declaration ‘SDL_KeyCode SDLK_SLASH’
   73 |     SDLK_SLASH = '/',
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:59:35: error: ‘SDLK_0’ conflicts with a previous declaration
   59 |         SDLK_0                  = 48,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:74:5: note: previous declaration ‘SDL_KeyCode SDLK_0’
   74 |     SDLK_0 = '0',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:60:35: error: ‘SDLK_1’ conflicts with a previous declaration
   60 |         SDLK_1                  = 49,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:75:5: note: previous declaration ‘SDL_KeyCode SDLK_1’
   75 |     SDLK_1 = '1',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:61:35: error: ‘SDLK_2’ conflicts with a previous declaration
   61 |         SDLK_2                  = 50,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:76:5: note: previous declaration ‘SDL_KeyCode SDLK_2’
   76 |     SDLK_2 = '2',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:62:35: error: ‘SDLK_3’ conflicts with a previous declaration
   62 |         SDLK_3                  = 51,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:77:5: note: previous declaration ‘SDL_KeyCode SDLK_3’
   77 |     SDLK_3 = '3',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:63:35: error: ‘SDLK_4’ conflicts with a previous declaration
   63 |         SDLK_4                  = 52,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:78:5: note: previous declaration ‘SDL_KeyCode SDLK_4’
   78 |     SDLK_4 = '4',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:64:35: error: ‘SDLK_5’ conflicts with a previous declaration
   64 |         SDLK_5                  = 53,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:79:5: note: previous declaration ‘SDL_KeyCode SDLK_5’
   79 |     SDLK_5 = '5',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:65:35: error: ‘SDLK_6’ conflicts with a previous declaration
   65 |         SDLK_6                  = 54,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:80:5: note: previous declaration ‘SDL_KeyCode SDLK_6’
   80 |     SDLK_6 = '6',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:66:35: error: ‘SDLK_7’ conflicts with a previous declaration
   66 |         SDLK_7                  = 55,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:81:5: note: previous declaration ‘SDL_KeyCode SDLK_7’
   81 |     SDLK_7 = '7',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:67:35: error: ‘SDLK_8’ conflicts with a previous declaration
   67 |         SDLK_8                  = 56,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:82:5: note: previous declaration ‘SDL_KeyCode SDLK_8’
   82 |     SDLK_8 = '8',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:68:35: error: ‘SDLK_9’ conflicts with a previous declaration
   68 |         SDLK_9                  = 57,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:83:5: note: previous declaration ‘SDL_KeyCode SDLK_9’
   83 |     SDLK_9 = '9',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:69:35: error: ‘SDLK_COLON’ conflicts with a previous declaration
   69 |         SDLK_COLON              = 58,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:84:5: note: previous declaration ‘SDL_KeyCode SDLK_COLON’
   84 |     SDLK_COLON = ':',
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:70:35: error: ‘SDLK_SEMICOLON’ conflicts with a previous declaration
   70 |         SDLK_SEMICOLON          = 59,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:85:5: note: previous declaration ‘SDL_KeyCode SDLK_SEMICOLON’
   85 |     SDLK_SEMICOLON = ';',
      |     ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:71:35: error: ‘SDLK_LESS’ conflicts with a previous declaration
   71 |         SDLK_LESS               = 60,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:86:5: note: previous declaration ‘SDL_KeyCode SDLK_LESS’
   86 |     SDLK_LESS = '<',
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:72:35: error: ‘SDLK_EQUALS’ conflicts with a previous declaration
   72 |         SDLK_EQUALS             = 61,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:87:5: note: previous declaration ‘SDL_KeyCode SDLK_EQUALS’
   87 |     SDLK_EQUALS = '=',
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:73:35: error: ‘SDLK_GREATER’ conflicts with a previous declaration
   73 |         SDLK_GREATER            = 62,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:88:5: note: previous declaration ‘SDL_KeyCode SDLK_GREATER’
   88 |     SDLK_GREATER = '>',
      |     ^~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:74:35: error: ‘SDLK_QUESTION’ conflicts with a previous declaration
   74 |         SDLK_QUESTION           = 63,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:89:5: note: previous declaration ‘SDL_KeyCode SDLK_QUESTION’
   89 |     SDLK_QUESTION = '?',
      |     ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:75:35: error: ‘SDLK_AT’ conflicts with a previous declaration
   75 |         SDLK_AT                 = 64,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:90:5: note: previous declaration ‘SDL_KeyCode SDLK_AT’
   90 |     SDLK_AT = '@',
      |     ^~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:79:35: error: ‘SDLK_LEFTBRACKET’ conflicts with a previous declaration
   79 |         SDLK_LEFTBRACKET        = 91,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:96:5: note: previous declaration ‘SDL_KeyCode SDLK_LEFTBRACKET’
   96 |     SDLK_LEFTBRACKET = '[',
      |     ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:80:35: error: ‘SDLK_BACKSLASH’ conflicts with a previous declaration
   80 |         SDLK_BACKSLASH          = 92,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:97:5: note: previous declaration ‘SDL_KeyCode SDLK_BACKSLASH’
   97 |     SDLK_BACKSLASH = '\\',
      |     ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:81:35: error: ‘SDLK_RIGHTBRACKET’ conflicts with a previous declaration
   81 |         SDLK_RIGHTBRACKET       = 93,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:98:5: note: previous declaration ‘SDL_KeyCode SDLK_RIGHTBRACKET’
   98 |     SDLK_RIGHTBRACKET = ']',
      |     ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:82:35: error: ‘SDLK_CARET’ conflicts with a previous declaration
   82 |         SDLK_CARET              = 94,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:99:5: note: previous declaration ‘SDL_KeyCode SDLK_CARET’
   99 |     SDLK_CARET = '^',
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:83:35: error: ‘SDLK_UNDERSCORE’ conflicts with a previous declaration
   83 |         SDLK_UNDERSCORE         = 95,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:100:5: note: previous declaration ‘SDL_KeyCode SDLK_UNDERSCORE’
  100 |     SDLK_UNDERSCORE = '_',
      |     ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:84:35: error: ‘SDLK_BACKQUOTE’ conflicts with a previous declaration
   84 |         SDLK_BACKQUOTE          = 96,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:101:5: note: previous declaration ‘SDL_KeyCode SDLK_BACKQUOTE’
  101 |     SDLK_BACKQUOTE = '`',
      |     ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:85:35: error: ‘SDLK_a’ conflicts with a previous declaration
   85 |         SDLK_a                  = 97,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:102:5: note: previous declaration ‘SDL_KeyCode SDLK_a’
  102 |     SDLK_a = 'a',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:86:35: error: ‘SDLK_b’ conflicts with a previous declaration
   86 |         SDLK_b                  = 98,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:103:5: note: previous declaration ‘SDL_KeyCode SDLK_b’
  103 |     SDLK_b = 'b',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:87:35: error: ‘SDLK_c’ conflicts with a previous declaration
   87 |         SDLK_c                  = 99,
      |                                   ^~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:104:5: note: previous declaration ‘SDL_KeyCode SDLK_c’
  104 |     SDLK_c = 'c',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:88:35: error: ‘SDLK_d’ conflicts with a previous declaration
   88 |         SDLK_d                  = 100,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:105:5: note: previous declaration ‘SDL_KeyCode SDLK_d’
  105 |     SDLK_d = 'd',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:89:35: error: ‘SDLK_e’ conflicts with a previous declaration
   89 |         SDLK_e                  = 101,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:106:5: note: previous declaration ‘SDL_KeyCode SDLK_e’
  106 |     SDLK_e = 'e',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:90:35: error: ‘SDLK_f’ conflicts with a previous declaration
   90 |         SDLK_f                  = 102,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:107:5: note: previous declaration ‘SDL_KeyCode SDLK_f’
  107 |     SDLK_f = 'f',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:91:35: error: ‘SDLK_g’ conflicts with a previous declaration
   91 |         SDLK_g                  = 103,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:108:5: note: previous declaration ‘SDL_KeyCode SDLK_g’
  108 |     SDLK_g = 'g',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:92:35: error: ‘SDLK_h’ conflicts with a previous declaration
   92 |         SDLK_h                  = 104,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:109:5: note: previous declaration ‘SDL_KeyCode SDLK_h’
  109 |     SDLK_h = 'h',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:93:35: error: ‘SDLK_i’ conflicts with a previous declaration
   93 |         SDLK_i                  = 105,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:110:5: note: previous declaration ‘SDL_KeyCode SDLK_i’
  110 |     SDLK_i = 'i',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:94:35: error: ‘SDLK_j’ conflicts with a previous declaration
   94 |         SDLK_j                  = 106,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:111:5: note: previous declaration ‘SDL_KeyCode SDLK_j’
  111 |     SDLK_j = 'j',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:95:35: error: ‘SDLK_k’ conflicts with a previous declaration
   95 |         SDLK_k                  = 107,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:112:5: note: previous declaration ‘SDL_KeyCode SDLK_k’
  112 |     SDLK_k = 'k',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:96:35: error: ‘SDLK_l’ conflicts with a previous declaration
   96 |         SDLK_l                  = 108,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:113:5: note: previous declaration ‘SDL_KeyCode SDLK_l’
  113 |     SDLK_l = 'l',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:97:35: error: ‘SDLK_m’ conflicts with a previous declaration
   97 |         SDLK_m                  = 109,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:114:5: note: previous declaration ‘SDL_KeyCode SDLK_m’
  114 |     SDLK_m = 'm',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:98:35: error: ‘SDLK_n’ conflicts with a previous declaration
   98 |         SDLK_n                  = 110,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:115:5: note: previous declaration ‘SDL_KeyCode SDLK_n’
  115 |     SDLK_n = 'n',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:99:35: error: ‘SDLK_o’ conflicts with a previous declaration
   99 |         SDLK_o                  = 111,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:116:5: note: previous declaration ‘SDL_KeyCode SDLK_o’
  116 |     SDLK_o = 'o',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:100:35: error: ‘SDLK_p’ conflicts with a previous declaration
  100 |         SDLK_p                  = 112,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:117:5: note: previous declaration ‘SDL_KeyCode SDLK_p’
  117 |     SDLK_p = 'p',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:101:35: error: ‘SDLK_q’ conflicts with a previous declaration
  101 |         SDLK_q                  = 113,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:118:5: note: previous declaration ‘SDL_KeyCode SDLK_q’
  118 |     SDLK_q = 'q',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:102:35: error: ‘SDLK_r’ conflicts with a previous declaration
  102 |         SDLK_r                  = 114,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:119:5: note: previous declaration ‘SDL_KeyCode SDLK_r’
  119 |     SDLK_r = 'r',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:103:35: error: ‘SDLK_s’ conflicts with a previous declaration
  103 |         SDLK_s                  = 115,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:120:5: note: previous declaration ‘SDL_KeyCode SDLK_s’
  120 |     SDLK_s = 's',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:104:35: error: ‘SDLK_t’ conflicts with a previous declaration
  104 |         SDLK_t                  = 116,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:121:5: note: previous declaration ‘SDL_KeyCode SDLK_t’
  121 |     SDLK_t = 't',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:105:35: error: ‘SDLK_u’ conflicts with a previous declaration
  105 |         SDLK_u                  = 117,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:122:5: note: previous declaration ‘SDL_KeyCode SDLK_u’
  122 |     SDLK_u = 'u',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:106:35: error: ‘SDLK_v’ conflicts with a previous declaration
  106 |         SDLK_v                  = 118,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:123:5: note: previous declaration ‘SDL_KeyCode SDLK_v’
  123 |     SDLK_v = 'v',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:107:35: error: ‘SDLK_w’ conflicts with a previous declaration
  107 |         SDLK_w                  = 119,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:124:5: note: previous declaration ‘SDL_KeyCode SDLK_w’
  124 |     SDLK_w = 'w',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:108:35: error: ‘SDLK_x’ conflicts with a previous declaration
  108 |         SDLK_x                  = 120,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:125:5: note: previous declaration ‘SDL_KeyCode SDLK_x’
  125 |     SDLK_x = 'x',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:109:35: error: ‘SDLK_y’ conflicts with a previous declaration
  109 |         SDLK_y                  = 121,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:126:5: note: previous declaration ‘SDL_KeyCode SDLK_y’
  126 |     SDLK_y = 'y',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:110:35: error: ‘SDLK_z’ conflicts with a previous declaration
  110 |         SDLK_z                  = 122,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:127:5: note: previous declaration ‘SDL_KeyCode SDLK_z’
  127 |     SDLK_z = 'z',
      |     ^~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:111:35: error: ‘SDLK_DELETE’ conflicts with a previous declaration
  111 |         SDLK_DELETE             = 127,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:150:5: note: previous declaration ‘SDL_KeyCode SDLK_DELETE’
  150 |     SDLK_DELETE = '\x7F',
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:227:35: error: ‘SDLK_KP_PERIOD’ conflicts with a previous declaration
  227 |         SDLK_KP_PERIOD          = 266,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:174:5: note: previous declaration ‘SDL_KeyCode SDLK_KP_PERIOD’
  174 |     SDLK_KP_PERIOD = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_PERIOD),
      |     ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:228:35: error: ‘SDLK_KP_DIVIDE’ conflicts with a previous declaration
  228 |         SDLK_KP_DIVIDE          = 267,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:159:5: note: previous declaration ‘SDL_KeyCode SDLK_KP_DIVIDE’
  159 |     SDLK_KP_DIVIDE = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_DIVIDE),
      |     ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:229:35: error: ‘SDLK_KP_MULTIPLY’ conflicts with a previous declaration
  229 |         SDLK_KP_MULTIPLY        = 268,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:160:5: note: previous declaration ‘SDL_KeyCode SDLK_KP_MULTIPLY’
  160 |     SDLK_KP_MULTIPLY = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_MULTIPLY),
      |     ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:230:35: error: ‘SDLK_KP_MINUS’ conflicts with a previous declaration
  230 |         SDLK_KP_MINUS           = 269,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:161:5: note: previous declaration ‘SDL_KeyCode SDLK_KP_MINUS’
  161 |     SDLK_KP_MINUS = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_MINUS),
      |     ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:231:35: error: ‘SDLK_KP_PLUS’ conflicts with a previous declaration
  231 |         SDLK_KP_PLUS            = 270,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:162:5: note: previous declaration ‘SDL_KeyCode SDLK_KP_PLUS’
  162 |     SDLK_KP_PLUS = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_PLUS),
      |     ^~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:232:35: error: ‘SDLK_KP_ENTER’ conflicts with a previous declaration
  232 |         SDLK_KP_ENTER           = 271,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:163:5: note: previous declaration ‘SDL_KeyCode SDLK_KP_ENTER’
  163 |     SDLK_KP_ENTER = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_ENTER),
      |     ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:233:35: error: ‘SDLK_KP_EQUALS’ conflicts with a previous declaration
  233 |         SDLK_KP_EQUALS          = 272,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:178:5: note: previous declaration ‘SDL_KeyCode SDLK_KP_EQUALS’
  178 |     SDLK_KP_EQUALS = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_EQUALS),
      |     ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:238:35: error: ‘SDLK_UP’ conflicts with a previous declaration
  238 |         SDLK_UP                 = 273,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:156:5: note: previous declaration ‘SDL_KeyCode SDLK_UP’
  156 |     SDLK_UP = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_UP),
      |     ^~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:239:35: error: ‘SDLK_DOWN’ conflicts with a previous declaration
  239 |         SDLK_DOWN               = 274,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:155:5: note: previous declaration ‘SDL_KeyCode SDLK_DOWN’
  155 |     SDLK_DOWN = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_DOWN),
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:240:35: error: ‘SDLK_RIGHT’ conflicts with a previous declaration
  240 |         SDLK_RIGHT              = 275,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:153:5: note: previous declaration ‘SDL_KeyCode SDLK_RIGHT’
  153 |     SDLK_RIGHT = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_RIGHT),
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:241:35: error: ‘SDLK_LEFT’ conflicts with a previous declaration
  241 |         SDLK_LEFT               = 276,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:154:5: note: previous declaration ‘SDL_KeyCode SDLK_LEFT’
  154 |     SDLK_LEFT = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_LEFT),
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:242:35: error: ‘SDLK_INSERT’ conflicts with a previous declaration
  242 |         SDLK_INSERT             = 277,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:147:5: note: previous declaration ‘SDL_KeyCode SDLK_INSERT’
  147 |     SDLK_INSERT = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_INSERT),
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:243:35: error: ‘SDLK_HOME’ conflicts with a previous declaration
  243 |         SDLK_HOME               = 278,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:148:5: note: previous declaration ‘SDL_KeyCode SDLK_HOME’
  148 |     SDLK_HOME = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_HOME),
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:244:35: error: ‘SDLK_END’ conflicts with a previous declaration
  244 |         SDLK_END                = 279,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:151:5: note: previous declaration ‘SDL_KeyCode SDLK_END’
  151 |     SDLK_END = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_END),
      |     ^~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:245:35: error: ‘SDLK_PAGEUP’ conflicts with a previous declaration
  245 |         SDLK_PAGEUP             = 280,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:149:5: note: previous declaration ‘SDL_KeyCode SDLK_PAGEUP’
  149 |     SDLK_PAGEUP = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_PAGEUP),
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:246:35: error: ‘SDLK_PAGEDOWN’ conflicts with a previous declaration
  246 |         SDLK_PAGEDOWN           = 281,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:152:5: note: previous declaration ‘SDL_KeyCode SDLK_PAGEDOWN’
  152 |     SDLK_PAGEDOWN = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_PAGEDOWN),
      |     ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:251:35: error: ‘SDLK_F1’ conflicts with a previous declaration
  251 |         SDLK_F1                 = 282,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:131:5: note: previous declaration ‘SDL_KeyCode SDLK_F1’
  131 |     SDLK_F1 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F1),
      |     ^~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:252:35: error: ‘SDLK_F2’ conflicts with a previous declaration
  252 |         SDLK_F2                 = 283,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:132:5: note: previous declaration ‘SDL_KeyCode SDLK_F2’
  132 |     SDLK_F2 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F2),
      |     ^~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:253:35: error: ‘SDLK_F3’ conflicts with a previous declaration
  253 |         SDLK_F3                 = 284,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:133:5: note: previous declaration ‘SDL_KeyCode SDLK_F3’
  133 |     SDLK_F3 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F3),
      |     ^~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:254:35: error: ‘SDLK_F4’ conflicts with a previous declaration
  254 |         SDLK_F4                 = 285,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:134:5: note: previous declaration ‘SDL_KeyCode SDLK_F4’
  134 |     SDLK_F4 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F4),
      |     ^~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:255:35: error: ‘SDLK_F5’ conflicts with a previous declaration
  255 |         SDLK_F5                 = 286,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:135:5: note: previous declaration ‘SDL_KeyCode SDLK_F5’
  135 |     SDLK_F5 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F5),
      |     ^~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:256:35: error: ‘SDLK_F6’ conflicts with a previous declaration
  256 |         SDLK_F6                 = 287,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:136:5: note: previous declaration ‘SDL_KeyCode SDLK_F6’
  136 |     SDLK_F6 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F6),
      |     ^~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:257:35: error: ‘SDLK_F7’ conflicts with a previous declaration
  257 |         SDLK_F7                 = 288,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:137:5: note: previous declaration ‘SDL_KeyCode SDLK_F7’
  137 |     SDLK_F7 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F7),
      |     ^~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:258:35: error: ‘SDLK_F8’ conflicts with a previous declaration
  258 |         SDLK_F8                 = 289,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:138:5: note: previous declaration ‘SDL_KeyCode SDLK_F8’
  138 |     SDLK_F8 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F8),
      |     ^~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:259:35: error: ‘SDLK_F9’ conflicts with a previous declaration
  259 |         SDLK_F9                 = 290,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:139:5: note: previous declaration ‘SDL_KeyCode SDLK_F9’
  139 |     SDLK_F9 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F9),
      |     ^~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:260:35: error: ‘SDLK_F10’ conflicts with a previous declaration
  260 |         SDLK_F10                = 291,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:140:5: note: previous declaration ‘SDL_KeyCode SDLK_F10’
  140 |     SDLK_F10 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F10),
      |     ^~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:261:35: error: ‘SDLK_F11’ conflicts with a previous declaration
  261 |         SDLK_F11                = 292,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:141:5: note: previous declaration ‘SDL_KeyCode SDLK_F11’
  141 |     SDLK_F11 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F11),
      |     ^~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:262:35: error: ‘SDLK_F12’ conflicts with a previous declaration
  262 |         SDLK_F12                = 293,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:142:5: note: previous declaration ‘SDL_KeyCode SDLK_F12’
  142 |     SDLK_F12 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F12),
      |     ^~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:263:35: error: ‘SDLK_F13’ conflicts with a previous declaration
  263 |         SDLK_F13                = 294,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:179:5: note: previous declaration ‘SDL_KeyCode SDLK_F13’
  179 |     SDLK_F13 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F13),
      |     ^~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:264:35: error: ‘SDLK_F14’ conflicts with a previous declaration
  264 |         SDLK_F14                = 295,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:180:5: note: previous declaration ‘SDL_KeyCode SDLK_F14’
  180 |     SDLK_F14 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F14),
      |     ^~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:265:35: error: ‘SDLK_F15’ conflicts with a previous declaration
  265 |         SDLK_F15                = 296,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:181:5: note: previous declaration ‘SDL_KeyCode SDLK_F15’
  181 |     SDLK_F15 = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F15),
      |     ^~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:271:35: error: ‘SDLK_CAPSLOCK’ conflicts with a previous declaration
  271 |         SDLK_CAPSLOCK           = 301,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:129:5: note: previous declaration ‘SDL_KeyCode SDLK_CAPSLOCK’
  129 |     SDLK_CAPSLOCK = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_CAPSLOCK),
      |     ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:273:35: error: ‘SDLK_RSHIFT’ conflicts with a previous declaration
  273 |         SDLK_RSHIFT             = 303,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:283:5: note: previous declaration ‘SDL_KeyCode SDLK_RSHIFT’
  283 |     SDLK_RSHIFT = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_RSHIFT),
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:274:35: error: ‘SDLK_LSHIFT’ conflicts with a previous declaration
  274 |         SDLK_LSHIFT             = 304,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:279:5: note: previous declaration ‘SDL_KeyCode SDLK_LSHIFT’
  279 |     SDLK_LSHIFT = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_LSHIFT),
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:275:35: error: ‘SDLK_RCTRL’ conflicts with a previous declaration
  275 |         SDLK_RCTRL              = 305,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:282:5: note: previous declaration ‘SDL_KeyCode SDLK_RCTRL’
  282 |     SDLK_RCTRL = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_RCTRL),
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:276:35: error: ‘SDLK_LCTRL’ conflicts with a previous declaration
  276 |         SDLK_LCTRL              = 306,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:278:5: note: previous declaration ‘SDL_KeyCode SDLK_LCTRL’
  278 |     SDLK_LCTRL = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_LCTRL),
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:277:35: error: ‘SDLK_RALT’ conflicts with a previous declaration
  277 |         SDLK_RALT               = 307,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:284:5: note: previous declaration ‘SDL_KeyCode SDLK_RALT’
  284 |     SDLK_RALT = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_RALT),
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:278:35: error: ‘SDLK_LALT’ conflicts with a previous declaration
  278 |         SDLK_LALT               = 308,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:280:5: note: previous declaration ‘SDL_KeyCode SDLK_LALT’
  280 |     SDLK_LALT = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_LALT),
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:283:35: error: ‘SDLK_MODE’ conflicts with a previous declaration
  283 |         SDLK_MODE               = 313,          /**< "Alt Gr" key */
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:287:5: note: previous declaration ‘SDL_KeyCode SDLK_MODE’
  287 |     SDLK_MODE = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MODE),
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:289:35: error: ‘SDLK_HELP’ conflicts with a previous declaration
  289 |         SDLK_HELP               = 315,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:192:5: note: previous declaration ‘SDL_KeyCode SDLK_HELP’
  192 |     SDLK_HELP = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_HELP),
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:291:35: error: ‘SDLK_SYSREQ’ conflicts with a previous declaration
  291 |         SDLK_SYSREQ             = 317,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:210:5: note: previous declaration ‘SDL_KeyCode SDLK_SYSREQ’
  210 |     SDLK_SYSREQ = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_SYSREQ),
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:293:35: error: ‘SDLK_MENU’ conflicts with a previous declaration
  293 |         SDLK_MENU               = 319,
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:193:5: note: previous declaration ‘SDL_KeyCode SDLK_MENU’
  193 |     SDLK_MENU = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MENU),
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:294:35: error: ‘SDLK_POWER’ conflicts with a previous declaration
  294 |         SDLK_POWER              = 320,          /**< Power Macintosh power key */
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:177:5: note: previous declaration ‘SDL_KeyCode SDLK_POWER’
  177 |     SDLK_POWER = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_POWER),
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:296:35: error: ‘SDLK_UNDO’ conflicts with a previous declaration
  296 |         SDLK_UNDO               = 322,          /**< Atari keyboard has Undo */
      |                                   ^~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:197:5: note: previous declaration ‘SDL_KeyCode SDLK_UNDO’
  197 |     SDLK_UNDO = SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_UNDO),
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:306:22: error: ‘KMOD_NONE’ conflicts with a previous declaration
  306 |         KMOD_NONE  = 0x0000,
      |                      ^~~~~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:329:5: note: previous declaration ‘SDL_Keymod KMOD_NONE’
  329 |     KMOD_NONE = 0x0000,
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:307:22: error: ‘KMOD_LSHIFT’ conflicts with a previous declaration
  307 |         KMOD_LSHIFT= 0x0001,
      |                      ^~~~~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:330:5: note: previous declaration ‘SDL_Keymod KMOD_LSHIFT’
  330 |     KMOD_LSHIFT = 0x0001,
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:308:22: error: ‘KMOD_RSHIFT’ conflicts with a previous declaration
  308 |         KMOD_RSHIFT= 0x0002,
      |                      ^~~~~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:331:5: note: previous declaration ‘SDL_Keymod KMOD_RSHIFT’
  331 |     KMOD_RSHIFT = 0x0002,
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:309:22: error: ‘KMOD_LCTRL’ conflicts with a previous declaration
  309 |         KMOD_LCTRL = 0x0040,
      |                      ^~~~~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:332:5: note: previous declaration ‘SDL_Keymod KMOD_LCTRL’
  332 |     KMOD_LCTRL = 0x0040,
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:310:22: error: ‘KMOD_RCTRL’ conflicts with a previous declaration
  310 |         KMOD_RCTRL = 0x0080,
      |                      ^~~~~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:333:5: note: previous declaration ‘SDL_Keymod KMOD_RCTRL’
  333 |     KMOD_RCTRL = 0x0080,
      |     ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:311:22: error: ‘KMOD_LALT’ conflicts with a previous declaration
  311 |         KMOD_LALT  = 0x0100,
      |                      ^~~~~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:334:5: note: previous declaration ‘SDL_Keymod KMOD_LALT’
  334 |     KMOD_LALT = 0x0100,
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:312:22: error: ‘KMOD_RALT’ conflicts with a previous declaration
  312 |         KMOD_RALT  = 0x0200,
      |                      ^~~~~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:335:5: note: previous declaration ‘SDL_Keymod KMOD_RALT’
  335 |     KMOD_RALT = 0x0200,
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:315:22: error: ‘KMOD_NUM’ conflicts with a previous declaration
  315 |         KMOD_NUM   = 0x1000,
      |                      ^~~~~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:338:5: note: previous declaration ‘SDL_Keymod KMOD_NUM’
  338 |     KMOD_NUM = 0x1000,
      |     ^~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:316:22: error: ‘KMOD_CAPS’ conflicts with a previous declaration
  316 |         KMOD_CAPS  = 0x2000,
      |                      ^~~~~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:339:5: note: previous declaration ‘SDL_Keymod KMOD_CAPS’
  339 |     KMOD_CAPS = 0x2000,
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:317:22: error: ‘KMOD_MODE’ conflicts with a previous declaration
  317 |         KMOD_MODE  = 0x4000,
      |                      ^~~~~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:340:5: note: previous declaration ‘SDL_Keymod KMOD_MODE’
  340 |     KMOD_MODE = 0x4000,
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL_keyboard.h:32,
                 from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keysym.h:318:25: error: ‘KMOD_RESERVED’ conflicts with a previous declaration
  318 |         KMOD_RESERVED = 0x8000
      |                         ^~~~~~
In file included from /usr/include/SDL2/SDL_keyboard.h:33,
                 from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keycode.h:348:5: note: previous declaration ‘SDL_Keymod KMOD_RESERVED’
  348 |     KMOD_RESERVED = KMOD_SCROLL /* This is for source-level compatibility with SDL 2.0.0. */
      |     ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keyboard.h:115:32: error: conflicting declaration of C function ‘SDLMod SDL_GetModState()’
  115 | extern DECLSPEC SDLMod SDLCALL SDL_GetModState(void);
      |                                ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keyboard.h:107:36: note: previous declaration ‘SDL_Keymod SDL_GetModState()’
  107 | extern DECLSPEC SDL_Keymod SDLCALL SDL_GetModState(void);
      |                                    ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keyboard.h:121:30: error: conflicting declaration of C function ‘void SDL_SetModState(SDLMod)’
  121 | extern DECLSPEC void SDLCALL SDL_SetModState(SDLMod modstate);
      |                              ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keyboard.h:126:30: note: previous declaration ‘void SDL_SetModState(SDL_Keymod)’
  126 | extern DECLSPEC void SDLCALL SDL_SetModState(SDL_Keymod modstate);
      |                              ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_events.h:34,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_keyboard.h:126:32: error: conflicting declaration of C function ‘char* SDL_GetKeyName(SDLKey)’
  126 | extern DECLSPEC char * SDLCALL SDL_GetKeyName(SDLKey key);
      |                                ^~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:34,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_keyboard.h:217:37: note: previous declaration ‘const char* SDL_GetKeyName(SDL_Keycode)’
  217 | extern DECLSPEC const char *SDLCALL SDL_GetKeyName(SDL_Keycode key);
      |                                     ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:50:16: error: redefinition of ‘struct SDL_Rect’
   50 | typedef struct SDL_Rect {
      |                ^~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:33,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_rect.h:77:16: note: previous definition of ‘struct SDL_Rect’
   77 | typedef struct SDL_Rect
      |                ^~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:53:3: error: conflicting declaration ‘typedef int SDL_Rect’
   53 | } SDL_Rect;
      |   ^~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:33,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_rect.h:81:3: note: previous declaration as ‘typedef struct SDL_Rect SDL_Rect’
   81 | } SDL_Rect;
      |   ^~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:55:16: error: redefinition of ‘struct SDL_Color’
   55 | typedef struct SDL_Color {
      |                ^~~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:32,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_pixels.h:309:16: note: previous definition of ‘struct SDL_Color’
  309 | typedef struct SDL_Color
      |                ^~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:60:3: error: conflicting declaration ‘typedef int SDL_Color’
   60 | } SDL_Color;
      |   ^~~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:32,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_pixels.h:315:3: note: previous declaration as ‘typedef struct SDL_Color SDL_Color’
  315 | } SDL_Color;
      |   ^~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:63:16: error: redefinition of ‘struct SDL_Palette’
   63 | typedef struct SDL_Palette {
      |                ^~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:32,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_pixels.h:318:16: note: previous definition of ‘struct SDL_Palette’
  318 | typedef struct SDL_Palette
      |                ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:66:3: error: conflicting declaration ‘typedef int SDL_Palette’
   66 | } SDL_Palette;
      |   ^~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:32,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_pixels.h:324:3: note: previous declaration as ‘typedef struct SDL_Palette SDL_Palette’
  324 | } SDL_Palette;
      |   ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:70:16: error: redefinition of ‘struct SDL_PixelFormat’
   70 | typedef struct SDL_PixelFormat {
      |                ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:32,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_pixels.h:329:16: note: previous definition of ‘struct SDL_PixelFormat’
  329 | typedef struct SDL_PixelFormat
      |                ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:91:3: error: conflicting declaration ‘typedef int SDL_PixelFormat’
   91 | } SDL_PixelFormat;
      |   ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:32,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_pixels.h:350:3: note: previous declaration as ‘typedef struct SDL_PixelFormat SDL_PixelFormat’
  350 | } SDL_PixelFormat;
      |   ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:96:16: error: redefinition of ‘struct SDL_Surface’
   96 | typedef struct SDL_Surface {
      |                ^~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:34,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_surface.h:70:16: note: previous definition of ‘struct SDL_Surface’
   70 | typedef struct SDL_Surface
      |                ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:122:3: error: conflicting declaration ‘typedef int SDL_Surface’
  122 | } SDL_Surface;
      |   ^~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:34,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_surface.h:95:3: note: previous declaration as ‘typedef struct SDL_Surface SDL_Surface’
   95 | } SDL_Surface;
      |   ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:231:5: error: ‘SDL_GL_RED_SIZE’ conflicts with a previous declaration
  231 |     SDL_GL_RED_SIZE,
      |     ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:225:5: note: previous declaration ‘SDL_GLattr SDL_GL_RED_SIZE’
  225 |     SDL_GL_RED_SIZE,
      |     ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:232:5: error: ‘SDL_GL_GREEN_SIZE’ conflicts with a previous declaration
  232 |     SDL_GL_GREEN_SIZE,
      |     ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:226:5: note: previous declaration ‘SDL_GLattr SDL_GL_GREEN_SIZE’
  226 |     SDL_GL_GREEN_SIZE,
      |     ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:233:5: error: ‘SDL_GL_BLUE_SIZE’ conflicts with a previous declaration
  233 |     SDL_GL_BLUE_SIZE,
      |     ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:227:5: note: previous declaration ‘SDL_GLattr SDL_GL_BLUE_SIZE’
  227 |     SDL_GL_BLUE_SIZE,
      |     ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:234:5: error: ‘SDL_GL_ALPHA_SIZE’ conflicts with a previous declaration
  234 |     SDL_GL_ALPHA_SIZE,
      |     ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:228:5: note: previous declaration ‘SDL_GLattr SDL_GL_ALPHA_SIZE’
  228 |     SDL_GL_ALPHA_SIZE,
      |     ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:235:5: error: ‘SDL_GL_BUFFER_SIZE’ conflicts with a previous declaration
  235 |     SDL_GL_BUFFER_SIZE,
      |     ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:229:5: note: previous declaration ‘SDL_GLattr SDL_GL_BUFFER_SIZE’
  229 |     SDL_GL_BUFFER_SIZE,
      |     ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:236:5: error: ‘SDL_GL_DOUBLEBUFFER’ conflicts with a previous declaration
  236 |     SDL_GL_DOUBLEBUFFER,
      |     ^~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:230:5: note: previous declaration ‘SDL_GLattr SDL_GL_DOUBLEBUFFER’
  230 |     SDL_GL_DOUBLEBUFFER,
      |     ^~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:237:5: error: ‘SDL_GL_DEPTH_SIZE’ conflicts with a previous declaration
  237 |     SDL_GL_DEPTH_SIZE,
      |     ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:231:5: note: previous declaration ‘SDL_GLattr SDL_GL_DEPTH_SIZE’
  231 |     SDL_GL_DEPTH_SIZE,
      |     ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:238:5: error: ‘SDL_GL_STENCIL_SIZE’ conflicts with a previous declaration
  238 |     SDL_GL_STENCIL_SIZE,
      |     ^~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:232:5: note: previous declaration ‘SDL_GLattr SDL_GL_STENCIL_SIZE’
  232 |     SDL_GL_STENCIL_SIZE,
      |     ^~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:239:5: error: ‘SDL_GL_ACCUM_RED_SIZE’ conflicts with a previous declaration
  239 |     SDL_GL_ACCUM_RED_SIZE,
      |     ^~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:233:5: note: previous declaration ‘SDL_GLattr SDL_GL_ACCUM_RED_SIZE’
  233 |     SDL_GL_ACCUM_RED_SIZE,
      |     ^~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:240:5: error: ‘SDL_GL_ACCUM_GREEN_SIZE’ conflicts with a previous declaration
  240 |     SDL_GL_ACCUM_GREEN_SIZE,
      |     ^~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:234:5: note: previous declaration ‘SDL_GLattr SDL_GL_ACCUM_GREEN_SIZE’
  234 |     SDL_GL_ACCUM_GREEN_SIZE,
      |     ^~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:241:5: error: ‘SDL_GL_ACCUM_BLUE_SIZE’ conflicts with a previous declaration
  241 |     SDL_GL_ACCUM_BLUE_SIZE,
      |     ^~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:235:5: note: previous declaration ‘SDL_GLattr SDL_GL_ACCUM_BLUE_SIZE’
  235 |     SDL_GL_ACCUM_BLUE_SIZE,
      |     ^~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:242:5: error: ‘SDL_GL_ACCUM_ALPHA_SIZE’ conflicts with a previous declaration
  242 |     SDL_GL_ACCUM_ALPHA_SIZE,
      |     ^~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:236:5: note: previous declaration ‘SDL_GLattr SDL_GL_ACCUM_ALPHA_SIZE’
  236 |     SDL_GL_ACCUM_ALPHA_SIZE,
      |     ^~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:243:5: error: ‘SDL_GL_STEREO’ conflicts with a previous declaration
  243 |     SDL_GL_STEREO,
      |     ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:237:5: note: previous declaration ‘SDL_GLattr SDL_GL_STEREO’
  237 |     SDL_GL_STEREO,
      |     ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:244:5: error: ‘SDL_GL_MULTISAMPLEBUFFERS’ conflicts with a previous declaration
  244 |     SDL_GL_MULTISAMPLEBUFFERS,
      |     ^~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:238:5: note: previous declaration ‘SDL_GLattr SDL_GL_MULTISAMPLEBUFFERS’
  238 |     SDL_GL_MULTISAMPLEBUFFERS,
      |     ^~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:245:5: error: ‘SDL_GL_MULTISAMPLESAMPLES’ conflicts with a previous declaration
  245 |     SDL_GL_MULTISAMPLESAMPLES,
      |     ^~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:239:5: note: previous declaration ‘SDL_GLattr SDL_GL_MULTISAMPLESAMPLES’
  239 |     SDL_GL_MULTISAMPLESAMPLES,
      |     ^~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:246:5: error: ‘SDL_GL_ACCELERATED_VISUAL’ conflicts with a previous declaration
  246 |     SDL_GL_ACCELERATED_VISUAL,
      |     ^~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:240:5: note: previous declaration ‘SDL_GLattr SDL_GL_ACCELERATED_VISUAL’
  240 |     SDL_GL_ACCELERATED_VISUAL,
      |     ^~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:248:3: error: conflicting declaration ‘typedef enum SDL_GLattr SDL_GLattr’
  248 | } SDL_GLattr;
      |   ^~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:252:3: note: previous declaration as ‘typedef enum SDL_GLattr SDL_GLattr’
  252 | } SDL_GLattr;
      |   ^~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:275:29: error: conflicting declaration of C function ‘int SDL_VideoInit(const char*, Uint32)’
  275 | extern DECLSPEC int SDLCALL SDL_VideoInit(const char *driver_name, Uint32 flags);
      |                             ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_video.h:339:29: note: previous declaration ‘int SDL_VideoInit(const char*)’
  339 | extern DECLSPEC int SDLCALL SDL_VideoInit(const char *driver_name);
      |                             ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:615:29: error: conflicting declaration of C function ‘int SDL_SetColorKey(SDL_Surface*, Uint32, Uint32)’
  615 | extern DECLSPEC int SDLCALL SDL_SetColorKey
      |                             ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:34,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_surface.h:444:29: note: previous declaration ‘int SDL_SetColorKey(SDL_Surface*, int, Uint32)’
  444 | extern DECLSPEC int SDLCALL SDL_SetColorKey(SDL_Surface * surface,
      |                             ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:668:39: error: conflicting declaration of C function ‘SDL_Surface* SDL_ConvertSurface(SDL_Surface*, SDL_PixelFormat*, Uint32)’
  668 | extern DECLSPEC SDL_Surface * SDLCALL SDL_ConvertSurface
      |                                       ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:34,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_surface.h:673:38: note: previous declaration ‘SDL_Surface* SDL_ConvertSurface(SDL_Surface*, const SDL_PixelFormat*, Uint32)’
  673 | extern DECLSPEC SDL_Surface *SDLCALL SDL_ConvertSurface
      |                                      ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:748:29: error: conflicting declaration of C function ‘int SDL_UpperBlit(SDL_Surface*, SDL_Rect*, SDL_Surface*, SDL_Rect*)’
  748 | extern DECLSPEC int SDLCALL SDL_UpperBlit
      |                             ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:34,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_surface.h:871:29: note: previous declaration ‘int SDL_UpperBlit(SDL_Surface*, const SDL_Rect*, SDL_Surface*, SDL_Rect*)’
  871 | extern DECLSPEC int SDLCALL SDL_UpperBlit
      |                             ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:767:29: error: conflicting declaration of C function ‘int SDL_FillRect(SDL_Surface*, SDL_Rect*, Uint32)’
  767 | extern DECLSPEC int SDLCALL SDL_FillRect
      |                             ^~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:34,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_surface.h:772:29: note: previous declaration ‘int SDL_FillRect(SDL_Surface*, const SDL_Rect*, Uint32)’
  772 | extern DECLSPEC int SDLCALL SDL_FillRect
      |                             ^~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_mouse.h:32,
                 from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_video.h:942:29: error: conflicting declaration of C function ‘int SDL_SoftStretch(SDL_Surface*, SDL_Rect*, SDL_Surface*, SDL_Rect*)’
  942 | extern DECLSPEC int SDLCALL SDL_SoftStretch(SDL_Surface *src, SDL_Rect *srcrect,
      |                             ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_video.h:34,
                 from /usr/include/SDL2/SDL_events.h:33,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_surface.h:910:29: note: previous declaration ‘int SDL_SoftStretch(SDL_Surface*, const SDL_Rect*, SDL_Surface*, const SDL_Rect*)’
  910 | extern DECLSPEC int SDLCALL SDL_SoftStretch(SDL_Surface * src,
      |                             ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_mouse.h:57:31: error: conflicting declaration of C function ‘Uint8 SDL_GetMouseState(int*, int*)’
   57 | extern DECLSPEC Uint8 SDLCALL SDL_GetMouseState(int *x, int *y);
      |                               ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:35,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_mouse.h:104:32: note: previous declaration ‘Uint32 SDL_GetMouseState(int*, int*)’
  104 | extern DECLSPEC Uint32 SDLCALL SDL_GetMouseState(int *x, int *y);
      |                                ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_mouse.h:65:31: error: conflicting declaration of C function ‘Uint8 SDL_GetRelativeMouseState(int*, int*)’
   65 | extern DECLSPEC Uint8 SDLCALL SDL_GetRelativeMouseState(int *x, int *y);
      |                               ^~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:35,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_mouse.h:152:32: note: previous declaration ‘Uint32 SDL_GetRelativeMouseState(int*, int*)’
  152 | extern DECLSPEC Uint32 SDLCALL SDL_GetRelativeMouseState(int *x, int *y);
      |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_events.h:35,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_mouse.h:85:38: error: conflicting declaration of C function ‘SDL_Cursor* SDL_CreateCursor(Uint8*, Uint8*, int, int, int, int)’
   85 | extern DECLSPEC SDL_Cursor * SDLCALL SDL_CreateCursor
      |                                      ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:35,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_mouse.h:310:37: note: previous declaration ‘SDL_Cursor* SDL_CreateCursor(const Uint8*, const Uint8*, int, int, int, int)’
  310 | extern DECLSPEC SDL_Cursor *SDLCALL SDL_CreateCursor(const Uint8 * data,
      |                                     ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL_events.h:36,
                 from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_joystick.h:61:38: error: conflicting declaration of C function ‘const char* SDL_JoystickName(int)’
   61 | extern DECLSPEC const char * SDLCALL SDL_JoystickName(int device_index);
      |                                      ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL_events.h:36,
                 from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_joystick.h:420:37: note: previous declaration ‘const char* SDL_JoystickName(SDL_Joystick*)’
  420 | extern DECLSPEC const char *SDLCALL SDL_JoystickName(SDL_Joystick *joystick);
      |                                     ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:55:8: error: ‘SDL_KEYDOWN’ conflicts with a previous declaration
   55 |        SDL_KEYDOWN,                     /**< Keys pressed */
      |        ^~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:98:5: note: previous declaration ‘SDL_EventType SDL_KEYDOWN’
   98 |     SDL_KEYDOWN        = 0x300, /**< Key pressed */
      |     ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:56:8: error: ‘SDL_KEYUP’ conflicts with a previous declaration
   56 |        SDL_KEYUP,                       /**< Keys released */
      |        ^~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:99:5: note: previous declaration ‘SDL_EventType SDL_KEYUP’
   99 |     SDL_KEYUP,                  /**< Key released */
      |     ^~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:57:8: error: ‘SDL_MOUSEMOTION’ conflicts with a previous declaration
   57 |        SDL_MOUSEMOTION,                 /**< Mouse moved */
      |        ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:107:5: note: previous declaration ‘SDL_EventType SDL_MOUSEMOTION’
  107 |     SDL_MOUSEMOTION    = 0x400, /**< Mouse moved */
      |     ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:58:8: error: ‘SDL_MOUSEBUTTONDOWN’ conflicts with a previous declaration
   58 |        SDL_MOUSEBUTTONDOWN,             /**< Mouse button pressed */
      |        ^~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:108:5: note: previous declaration ‘SDL_EventType SDL_MOUSEBUTTONDOWN’
  108 |     SDL_MOUSEBUTTONDOWN,        /**< Mouse button pressed */
      |     ^~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:59:8: error: ‘SDL_MOUSEBUTTONUP’ conflicts with a previous declaration
   59 |        SDL_MOUSEBUTTONUP,               /**< Mouse button released */
      |        ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:109:5: note: previous declaration ‘SDL_EventType SDL_MOUSEBUTTONUP’
  109 |     SDL_MOUSEBUTTONUP,          /**< Mouse button released */
      |     ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:60:8: error: ‘SDL_JOYAXISMOTION’ conflicts with a previous declaration
   60 |        SDL_JOYAXISMOTION,               /**< Joystick axis motion */
      |        ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:113:5: note: previous declaration ‘SDL_EventType SDL_JOYAXISMOTION’
  113 |     SDL_JOYAXISMOTION  = 0x600, /**< Joystick axis motion */
      |     ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:61:8: error: ‘SDL_JOYBALLMOTION’ conflicts with a previous declaration
   61 |        SDL_JOYBALLMOTION,               /**< Joystick trackball motion */
      |        ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:114:5: note: previous declaration ‘SDL_EventType SDL_JOYBALLMOTION’
  114 |     SDL_JOYBALLMOTION,          /**< Joystick trackball motion */
      |     ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:62:8: error: ‘SDL_JOYHATMOTION’ conflicts with a previous declaration
   62 |        SDL_JOYHATMOTION,                /**< Joystick hat position change */
      |        ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:115:5: note: previous declaration ‘SDL_EventType SDL_JOYHATMOTION’
  115 |     SDL_JOYHATMOTION,           /**< Joystick hat position change */
      |     ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:63:8: error: ‘SDL_JOYBUTTONDOWN’ conflicts with a previous declaration
   63 |        SDL_JOYBUTTONDOWN,               /**< Joystick button pressed */
      |        ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:116:5: note: previous declaration ‘SDL_EventType SDL_JOYBUTTONDOWN’
  116 |     SDL_JOYBUTTONDOWN,          /**< Joystick button pressed */
      |     ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:64:8: error: ‘SDL_JOYBUTTONUP’ conflicts with a previous declaration
   64 |        SDL_JOYBUTTONUP,                 /**< Joystick button released */
      |        ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:117:5: note: previous declaration ‘SDL_EventType SDL_JOYBUTTONUP’
  117 |     SDL_JOYBUTTONUP,            /**< Joystick button released */
      |     ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:65:8: error: ‘SDL_QUIT’ conflicts with a previous declaration
   65 |        SDL_QUIT,                        /**< User-requested quit */
      |        ^~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:60:5: note: previous declaration ‘SDL_EventType SDL_QUIT’
   60 |     SDL_QUIT           = 0x100, /**< User-requested quit */
      |     ^~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:66:8: error: ‘SDL_SYSWMEVENT’ conflicts with a previous declaration
   66 |        SDL_SYSWMEVENT,                  /**< System specific event */
      |        ^~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:95:5: note: previous declaration ‘SDL_EventType SDL_SYSWMEVENT’
   95 |     SDL_SYSWMEVENT,             /**< System specific event */
      |     ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:78:24: error: ‘SDL_USEREVENT’ conflicts with a previous declaration
   78 |        SDL_USEREVENT = 24,
      |                        ^~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:169:5: note: previous declaration ‘SDL_EventType SDL_USEREVENT’
  169 |     SDL_USEREVENT    = 0x8000,
      |     ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:83:3: error: conflicting declaration ‘typedef enum SDL_EventType SDL_EventType’
   83 | } SDL_EventType;
      |   ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:175:3: note: previous declaration as ‘typedef enum SDL_EventType SDL_EventType’
  175 | } SDL_EventType;
      |   ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:90:35: error: right operand of shift expression ‘(1 << 768)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
   90 |         SDL_KEYDOWNMASK         = SDL_EVENTMASK(SDL_KEYDOWN),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:90:35: error: enumerator value for ‘SDL_KEYDOWNMASK’ is not an integer constant
   90 |         SDL_KEYDOWNMASK         = SDL_EVENTMASK(SDL_KEYDOWN),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:91:35: error: right operand of shift expression ‘(1 << 769)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
   91 |         SDL_KEYUPMASK           = SDL_EVENTMASK(SDL_KEYUP),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:91:35: error: enumerator value for ‘SDL_KEYUPMASK’ is not an integer constant
   91 |         SDL_KEYUPMASK           = SDL_EVENTMASK(SDL_KEYUP),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:92:35: error: right operand of shift expression ‘(1 << 768)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
   92 |         SDL_KEYEVENTMASK        = SDL_EVENTMASK(SDL_KEYDOWN)|
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:93:35: error: enumerator value for ‘SDL_KEYEVENTMASK’ is not an integer constant
   93 |                                   SDL_EVENTMASK(SDL_KEYUP),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:94:35: error: right operand of shift expression ‘(1 << 1024)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
   94 |         SDL_MOUSEMOTIONMASK     = SDL_EVENTMASK(SDL_MOUSEMOTION),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:94:35: error: enumerator value for ‘SDL_MOUSEMOTIONMASK’ is not an integer constant
   94 |         SDL_MOUSEMOTIONMASK     = SDL_EVENTMASK(SDL_MOUSEMOTION),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:95:35: error: right operand of shift expression ‘(1 << 1025)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
   95 |         SDL_MOUSEBUTTONDOWNMASK = SDL_EVENTMASK(SDL_MOUSEBUTTONDOWN),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:95:35: error: enumerator value for ‘SDL_MOUSEBUTTONDOWNMASK’ is not an integer constant
   95 |         SDL_MOUSEBUTTONDOWNMASK = SDL_EVENTMASK(SDL_MOUSEBUTTONDOWN),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:96:35: error: right operand of shift expression ‘(1 << 1026)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
   96 |         SDL_MOUSEBUTTONUPMASK   = SDL_EVENTMASK(SDL_MOUSEBUTTONUP),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:96:35: error: enumerator value for ‘SDL_MOUSEBUTTONUPMASK’ is not an integer constant
   96 |         SDL_MOUSEBUTTONUPMASK   = SDL_EVENTMASK(SDL_MOUSEBUTTONUP),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:97:35: error: right operand of shift expression ‘(1 << 1024)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
   97 |         SDL_MOUSEEVENTMASK      = SDL_EVENTMASK(SDL_MOUSEMOTION)|
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:99:35: error: enumerator value for ‘SDL_MOUSEEVENTMASK’ is not an integer constant
   99 |                                   SDL_EVENTMASK(SDL_MOUSEBUTTONUP),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:100:35: error: right operand of shift expression ‘(1 << 1536)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
  100 |         SDL_JOYAXISMOTIONMASK   = SDL_EVENTMASK(SDL_JOYAXISMOTION),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:100:35: error: enumerator value for ‘SDL_JOYAXISMOTIONMASK’ is not an integer constant
  100 |         SDL_JOYAXISMOTIONMASK   = SDL_EVENTMASK(SDL_JOYAXISMOTION),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:101:35: error: right operand of shift expression ‘(1 << 1537)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
  101 |         SDL_JOYBALLMOTIONMASK   = SDL_EVENTMASK(SDL_JOYBALLMOTION),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:101:35: error: enumerator value for ‘SDL_JOYBALLMOTIONMASK’ is not an integer constant
  101 |         SDL_JOYBALLMOTIONMASK   = SDL_EVENTMASK(SDL_JOYBALLMOTION),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:102:35: error: right operand of shift expression ‘(1 << 1538)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
  102 |         SDL_JOYHATMOTIONMASK    = SDL_EVENTMASK(SDL_JOYHATMOTION),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:102:35: error: enumerator value for ‘SDL_JOYHATMOTIONMASK’ is not an integer constant
  102 |         SDL_JOYHATMOTIONMASK    = SDL_EVENTMASK(SDL_JOYHATMOTION),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:103:35: error: right operand of shift expression ‘(1 << 1539)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
  103 |         SDL_JOYBUTTONDOWNMASK   = SDL_EVENTMASK(SDL_JOYBUTTONDOWN),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:103:35: error: enumerator value for ‘SDL_JOYBUTTONDOWNMASK’ is not an integer constant
  103 |         SDL_JOYBUTTONDOWNMASK   = SDL_EVENTMASK(SDL_JOYBUTTONDOWN),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:104:35: error: right operand of shift expression ‘(1 << 1540)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
  104 |         SDL_JOYBUTTONUPMASK     = SDL_EVENTMASK(SDL_JOYBUTTONUP),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:104:35: error: enumerator value for ‘SDL_JOYBUTTONUPMASK’ is not an integer constant
  104 |         SDL_JOYBUTTONUPMASK     = SDL_EVENTMASK(SDL_JOYBUTTONUP),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:105:35: error: right operand of shift expression ‘(1 << 1536)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
  105 |         SDL_JOYEVENTMASK        = SDL_EVENTMASK(SDL_JOYAXISMOTION)|
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:109:35: error: enumerator value for ‘SDL_JOYEVENTMASK’ is not an integer constant
  109 |                                   SDL_EVENTMASK(SDL_JOYBUTTONUP),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:112:35: error: right operand of shift expression ‘(1 << 256)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
  112 |         SDL_QUITMASK            = SDL_EVENTMASK(SDL_QUIT),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:112:35: error: enumerator value for ‘SDL_QUITMASK’ is not an integer constant
  112 |         SDL_QUITMASK            = SDL_EVENTMASK(SDL_QUIT),
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:113:35: error: right operand of shift expression ‘(1 << 513)’ is greater than or equal to the precision 32 of the left operand [-fpermissive]
  113 |         SDL_SYSWMEVENTMASK      = SDL_EVENTMASK(SDL_SYSWMEVENT)
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:113:35: error: enumerator value for ‘SDL_SYSWMEVENTMASK’ is not an integer constant
  113 |         SDL_SYSWMEVENTMASK      = SDL_EVENTMASK(SDL_SYSWMEVENT)
      |                                   ^~~~~~~~~~~~~
/usr/include/SDL/SDL_events.h:126:16: error: redefinition of ‘struct SDL_KeyboardEvent’
  126 | typedef struct SDL_KeyboardEvent {
      |                ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:220:16: note: previous definition of ‘struct SDL_KeyboardEvent’
  220 | typedef struct SDL_KeyboardEvent
      |                ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:131:3: error: conflicting declaration ‘typedef int SDL_KeyboardEvent’
  131 | } SDL_KeyboardEvent;
      |   ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:230:3: note: previous declaration as ‘typedef struct SDL_KeyboardEvent SDL_KeyboardEvent’
  230 | } SDL_KeyboardEvent;
      |   ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:134:16: error: redefinition of ‘struct SDL_MouseMotionEvent’
  134 | typedef struct SDL_MouseMotionEvent {
      |                ^~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:262:16: note: previous definition of ‘struct SDL_MouseMotionEvent’
  262 | typedef struct SDL_MouseMotionEvent
      |                ^~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:141:3: error: conflicting declaration ‘typedef int SDL_MouseMotionEvent’
  141 | } SDL_MouseMotionEvent;
      |   ^~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:273:3: note: previous declaration as ‘typedef struct SDL_MouseMotionEvent SDL_MouseMotionEvent’
  273 | } SDL_MouseMotionEvent;
      |   ^~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:144:16: error: redefinition of ‘struct SDL_MouseButtonEvent’
  144 | typedef struct SDL_MouseButtonEvent {
      |                ^~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:278:16: note: previous definition of ‘struct SDL_MouseButtonEvent’
  278 | typedef struct SDL_MouseButtonEvent
      |                ^~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:150:3: error: conflicting declaration ‘typedef int SDL_MouseButtonEvent’
  150 | } SDL_MouseButtonEvent;
      |   ^~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:290:3: note: previous declaration as ‘typedef struct SDL_MouseButtonEvent SDL_MouseButtonEvent’
  290 | } SDL_MouseButtonEvent;
      |   ^~~~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:153:16: error: redefinition of ‘struct SDL_JoyAxisEvent’
  153 | typedef struct SDL_JoyAxisEvent {
      |                ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:311:16: note: previous definition of ‘struct SDL_JoyAxisEvent’
  311 | typedef struct SDL_JoyAxisEvent
      |                ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:158:3: error: conflicting declaration ‘typedef int SDL_JoyAxisEvent’
  158 | } SDL_JoyAxisEvent;
      |   ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:322:3: note: previous declaration as ‘typedef struct SDL_JoyAxisEvent SDL_JoyAxisEvent’
  322 | } SDL_JoyAxisEvent;
      |   ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:161:16: error: redefinition of ‘struct SDL_JoyBallEvent’
  161 | typedef struct SDL_JoyBallEvent {
      |                ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:327:16: note: previous definition of ‘struct SDL_JoyBallEvent’
  327 | typedef struct SDL_JoyBallEvent
      |                ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:167:3: error: conflicting declaration ‘typedef int SDL_JoyBallEvent’
  167 | } SDL_JoyBallEvent;
      |   ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:338:3: note: previous declaration as ‘typedef struct SDL_JoyBallEvent SDL_JoyBallEvent’
  338 | } SDL_JoyBallEvent;
      |   ^~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:170:16: error: redefinition of ‘struct SDL_JoyHatEvent’
  170 | typedef struct SDL_JoyHatEvent {
      |                ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:343:16: note: previous definition of ‘struct SDL_JoyHatEvent’
  343 | typedef struct SDL_JoyHatEvent
      |                ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:180:3: error: conflicting declaration ‘typedef int SDL_JoyHatEvent’
  180 | } SDL_JoyHatEvent;
      |   ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:358:3: note: previous declaration as ‘typedef struct SDL_JoyHatEvent SDL_JoyHatEvent’
  358 | } SDL_JoyHatEvent;
      |   ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:183:16: error: redefinition of ‘struct SDL_JoyButtonEvent’
  183 | typedef struct SDL_JoyButtonEvent {
      |                ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:363:16: note: previous definition of ‘struct SDL_JoyButtonEvent’
  363 | typedef struct SDL_JoyButtonEvent
      |                ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:188:3: error: conflicting declaration ‘typedef int SDL_JoyButtonEvent’
  188 | } SDL_JoyButtonEvent;
      |   ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:372:3: note: previous declaration as ‘typedef struct SDL_JoyButtonEvent SDL_JoyButtonEvent’
  372 | } SDL_JoyButtonEvent;
      |   ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:206:16: error: redefinition of ‘struct SDL_QuitEvent’
  206 | typedef struct SDL_QuitEvent {
      |                ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:548:16: note: previous definition of ‘struct SDL_QuitEvent’
  548 | typedef struct SDL_QuitEvent
      |                ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:208:3: error: conflicting declaration ‘typedef int SDL_QuitEvent’
  208 | } SDL_QuitEvent;
      |   ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:552:3: note: previous declaration as ‘typedef struct SDL_QuitEvent SDL_QuitEvent’
  552 | } SDL_QuitEvent;
      |   ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:211:16: error: redefinition of ‘struct SDL_UserEvent’
  211 | typedef struct SDL_UserEvent {
      |                ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:566:16: note: previous definition of ‘struct SDL_UserEvent’
  566 | typedef struct SDL_UserEvent
      |                ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:216:3: error: conflicting declaration ‘typedef int SDL_UserEvent’
  216 | } SDL_UserEvent;
      |   ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:574:3: note: previous declaration as ‘typedef struct SDL_UserEvent SDL_UserEvent’
  574 | } SDL_UserEvent;
      |   ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:221:16: error: redefinition of ‘struct SDL_SysWMEvent’
  221 | typedef struct SDL_SysWMEvent {
      |                ^~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:586:16: note: previous definition of ‘struct SDL_SysWMEvent’
  586 | typedef struct SDL_SysWMEvent
      |                ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:224:3: error: conflicting declaration ‘typedef int SDL_SysWMEvent’
  224 | } SDL_SysWMEvent;
      |   ^~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:591:3: note: previous declaration as ‘typedef struct SDL_SysWMEvent SDL_SysWMEvent’
  591 | } SDL_SysWMEvent;
      |   ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:227:15: error: redefinition of ‘union SDL_Event’
  227 | typedef union SDL_Event {
      |               ^~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:596:15: note: previous definition of ‘union SDL_Event’
  596 | typedef union SDL_Event
      |               ^~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:242:3: error: conflicting declaration ‘typedef int SDL_Event’
  242 | } SDL_Event;
      |   ^~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:642:3: note: previous declaration as ‘typedef union SDL_Event SDL_Event’
  642 | } SDL_Event;
      |   ^~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:254:9: error: ‘SDL_ADDEVENT’ conflicts with a previous declaration
  254 |         SDL_ADDEVENT,
      |         ^~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:677:5: note: previous declaration ‘SDL_eventaction SDL_ADDEVENT’
  677 |     SDL_ADDEVENT,
      |     ^~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:255:9: error: ‘SDL_PEEKEVENT’ conflicts with a previous declaration
  255 |         SDL_PEEKEVENT,
      |         ^~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:678:5: note: previous declaration ‘SDL_eventaction SDL_PEEKEVENT’
  678 |     SDL_PEEKEVENT,
      |     ^~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:256:9: error: ‘SDL_GETEVENT’ conflicts with a previous declaration
  256 |         SDL_GETEVENT
      |         ^~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:679:5: note: previous declaration ‘SDL_eventaction SDL_GETEVENT’
  679 |     SDL_GETEVENT
      |     ^~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:257:3: error: conflicting declaration ‘typedef enum SDL_eventaction SDL_eventaction’
  257 | } SDL_eventaction;
      |   ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:680:3: note: previous declaration as ‘typedef enum SDL_eventaction SDL_eventaction’
  680 | } SDL_eventaction;
      |   ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:277:29: error: conflicting declaration of C function ‘int SDL_PeepEvents(SDL_Event*, int, SDL_eventaction, Uint32)’
  277 | extern DECLSPEC int SDLCALL SDL_PeepEvents(SDL_Event *events, int numevents,
      |                             ^~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:720:29: note: previous declaration ‘int SDL_PeepEvents(SDL_Event*, int, SDL_eventaction, Uint32, Uint32)’
  720 | extern DECLSPEC int SDLCALL SDL_PeepEvents(SDL_Event * events, int numevents,
      |                             ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:300:23: error: conflicting declaration ‘typedef int (* SDL_EventFilter)(const SDL_Event*)’
  300 | typedef int (SDLCALL *SDL_EventFilter)(const SDL_Event *event);
      |                       ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:949:24: note: previous declaration as ‘typedef int (* SDL_EventFilter)(void*, SDL_Event*)’
  949 | typedef int (SDLCALL * SDL_EventFilter) (void *userdata, SDL_Event * event);
      |                        ^~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:323:30: error: conflicting declaration of C function ‘void SDL_SetEventFilter(SDL_EventFilter)’
  323 | extern DECLSPEC void SDLCALL SDL_SetEventFilter(SDL_EventFilter filter);
      |                              ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:993:30: note: previous declaration ‘void SDL_SetEventFilter(SDL_EventFilter, void*)’
  993 | extern DECLSPEC void SDLCALL SDL_SetEventFilter(SDL_EventFilter filter,
      |                              ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:329:41: error: conflicting declaration of C function ‘int (* SDL_GetEventFilter())(void*, SDL_Event*)’
  329 | extern DECLSPEC SDL_EventFilter SDLCALL SDL_GetEventFilter(void);
      |                                         ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:1011:34: note: previous declaration ‘SDL_bool SDL_GetEventFilter(int (**)(void*, SDL_Event*), void**)’
 1011 | extern DECLSPEC SDL_bool SDLCALL SDL_GetEventFilter(SDL_EventFilter * filter,
      |                                  ^~~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:37,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_events.h:348:31: error: conflicting declaration of C function ‘Uint8 SDL_EventState(Uint8, int)’
  348 | extern DECLSPEC Uint8 SDLCALL SDL_EventState(Uint8 type, int state);
      |                               ^~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:41,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_events.h:1103:31: note: previous declaration ‘Uint8 SDL_EventState(Uint32, int)’
 1103 | extern DECLSPEC Uint8 SDLCALL SDL_EventState(Uint32 type, int state);
      |                               ^~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:42,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_timer.h:55:26: error: conflicting declaration ‘typedef Uint32 (* SDL_TimerCallback)(Uint32)’
   55 | typedef Uint32 (SDLCALL *SDL_TimerCallback)(Uint32 interval);
      |                          ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:60,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_timer.h:157:27: note: previous declaration as ‘typedef Uint32 (* SDL_TimerCallback)(Uint32, void*)’
  157 | typedef Uint32 (SDLCALL * SDL_TimerCallback) (Uint32 interval, void *param);
      |                           ^~~~~~~~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:42,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_timer.h:104:30: error: conflicting declaration ‘typedef struct _SDL_TimerID* SDL_TimerID’
  104 | typedef struct _SDL_TimerID *SDL_TimerID;
      |                              ^~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:60,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_timer.h:162:13: note: previous declaration as ‘typedef int SDL_TimerID’
  162 | typedef int SDL_TimerID;
      |             ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:44,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_version.h:47:16: error: redefinition of ‘struct SDL_version’
   47 | typedef struct SDL_version {
      |                ^~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:61,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_version.h:51:16: note: previous definition of ‘struct SDL_version’
   51 | typedef struct SDL_version
      |                ^~~~~~~~~~~
In file included from /usr/include/SDL/SDL.h:44,
                 from object.h:8,
                 from sdl_gl.cpp:35:
/usr/include/SDL/SDL_version.h:51:3: error: conflicting declaration ‘typedef int SDL_version’
   51 | } SDL_version;
      |   ^~~~~~~~~~~
In file included from /usr/include/SDL2/SDL.h:61,
                 from sdl_gl.cpp:9:
/usr/include/SDL2/SDL_version.h:56:3: note: previous declaration as ‘typedef struct SDL_version SDL_version’
   56 | } SDL_version;
      |   ^~~~~~~~~~~
sdl_gl.cpp: In function ‘void process_events()’:
sdl_gl.cpp:180:30: error: cannot convert ‘SDL_Keysym*’ to ‘SDL_keysym*’
  180 |             handle_key_down( &event.key.keysym );
      |                              ^~~~~~~~~~~~~~~~~
      |                              |
      |                              SDL_Keysym*
sdl_gl.cpp:129:42: note:   initializing argument 1 of ‘void handle_key_down(SDL_keysym*)’
  129 | static void handle_key_down( SDL_keysym* keysym ) {
      |                              ~~~~~~~~~~~~^~~~~~
make: *** [Makefile:16: sdl_gl.o] Error 1