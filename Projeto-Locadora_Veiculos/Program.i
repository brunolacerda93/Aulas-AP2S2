# 0 "Program.c"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "Program.c"
# 1 "Entidades/Relatorios/Relatorios.c" 1
# 1 "Entidades/Relatorios/Relatorios.h" 1







# 1 "Entidades/Relatorios/../../tools.h" 1







# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 1 3
# 9 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt_stdio_config.h" 1 3
# 10 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt_stdio_config.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt.h" 1 3
# 10 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw.h" 1 3
# 10 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw_mac.h" 1 3
# 98 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw_mac.h" 3
             
# 107 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw_mac.h" 3
             
# 11 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw_secapi.h" 1 3
# 12 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 289 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\vadefs.h" 1 3
# 9 "c:\\mingw64\\x86_64-w64-mingw32\\include\\vadefs.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw.h" 1 3
# 623 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sdks/_mingw_ddk.h" 1 3
# 624 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 10 "c:\\mingw64\\x86_64-w64-mingw32\\include\\vadefs.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 24 "c:\\mingw64\\x86_64-w64-mingw32\\include\\vadefs.h" 3
  
# 24 "c:\\mingw64\\x86_64-w64-mingw32\\include\\vadefs.h" 3
 typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 103 "c:\\mingw64\\x86_64-w64-mingw32\\include\\vadefs.h" 3
#pragma pack(pop)
# 290 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 586 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw.h" 3
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{

  __asm__ __volatile__("int {$}3":);







}




const char *__mingw_get_crt_info (void);
# 11 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 35 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt.h" 3
__extension__ typedef unsigned long long size_t;
# 45 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt.h" 3
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 62 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt.h" 3
__extension__ typedef long long intptr_t;
# 75 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt.h" 3
__extension__ typedef unsigned long long uintptr_t;
# 88 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt.h" 3
__extension__ typedef long long ptrdiff_t;
# 98 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt.h" 3
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 138 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt.h" 3
typedef __time64_t time_t;
# 430 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {

  const unsigned short *_locale_pctype;
  int _locale_mb_cur_max;
  unsigned int _locale_lc_codepage;
# 482 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt.h" 3
} threadlocinfo;
# 501 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt.h" 3
#pragma pack(pop)
# 11 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt_stdio_config.h" 2 3
# 10 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 2 3

#pragma pack(push,_CRT_PACKING)

       

       

       

       
# 33 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
  struct _iobuf {

    void *_Placeholder;
# 46 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
  };
  typedef struct _iobuf FILE;
# 91 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw_off_t.h" 1 3




  typedef long _off_t;

  typedef long off32_t;





  __extension__ typedef long long _off64_t;

  __extension__ typedef long long off64_t;
# 26 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_mingw_off_t.h" 3
typedef off32_t off_t;
# 92 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 2 3

__attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) __acrt_iob_func(unsigned index);


  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) __iob_func(void);
# 115 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
  __extension__ typedef long long fpos_t;
# 156 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
extern
  __attribute__((__format__ (gnu_scanf, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_sscanf(const char * __restrict__ _Src,const char * __restrict__ _Format,...);
extern
  __attribute__((__format__ (gnu_scanf, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vsscanf (const char * __restrict__ _Str,const char * __restrict__ Format,va_list argp);
extern
  __attribute__((__format__ (gnu_scanf, 1, 2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_scanf(const char * __restrict__ _Format,...);
extern
  __attribute__((__format__ (gnu_scanf, 1, 0))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_vscanf(const char * __restrict__ Format, va_list argp);
extern
  __attribute__((__format__ (gnu_scanf, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_fscanf(FILE * __restrict__ _File,const char * __restrict__ _Format,...);
extern
  __attribute__((__format__ (gnu_scanf, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vfscanf (FILE * __restrict__ fp, const char * __restrict__ Format,va_list argp);

extern
  __attribute__((__format__ (gnu_printf, 3, 0))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_vsnprintf(char * __restrict__ _DstBuf,size_t _MaxCount,const char * __restrict__ _Format,
                               va_list _ArgList);
extern
  __attribute__((__format__ (gnu_printf, 3, 4))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_snprintf(char * __restrict__ s, size_t n, const char * __restrict__ format, ...);
extern
  __attribute__((__format__ (gnu_printf, 1, 2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_printf(const char * __restrict__ , ... ) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__ (gnu_printf, 1, 0))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_vprintf (const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__ (gnu_printf, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_fprintf (FILE * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__ (gnu_printf, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vfprintf (FILE * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__ (gnu_printf, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_sprintf (char * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__ (gnu_printf, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vsprintf (char * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__ (gnu_printf, 2, 3))) __attribute__((nonnull (1,2)))
  int __attribute__((__cdecl__)) __mingw_asprintf(char ** __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__ (gnu_printf, 2, 0))) __attribute__((nonnull (1,2)))
  int __attribute__((__cdecl__)) __mingw_vasprintf(char ** __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));

extern
  __attribute__((__format__ (ms_scanf, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_sscanf(const char * __restrict__ _Src,const char * __restrict__ _Format,...);
extern
  __attribute__((__format__ (ms_scanf, 1, 2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_scanf(const char * __restrict__ _Format,...);
extern
  __attribute__((__format__ (ms_scanf, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_fscanf(FILE * __restrict__ _File,const char * __restrict__ _Format,...);

extern
  __attribute__((__format__ (ms_printf, 1, 2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_printf(const char * __restrict__ , ... ) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__ (ms_printf, 1, 0))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_vprintf (const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__ (ms_printf, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_fprintf (FILE * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__ (ms_printf, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vfprintf (FILE * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__ (ms_printf, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_sprintf (char * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
extern
  __attribute__((__format__ (ms_printf, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vsprintf (char * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));


  int __attribute__((__cdecl__)) __stdio_common_vsprintf(unsigned long long options, char *str, size_t len, const char *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vfprintf(unsigned long long options, FILE *file, const char *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vsscanf(unsigned long long options, const char *input, size_t length, const char *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vfscanf(unsigned long long options, FILE *file, const char *format, _locale_t locale, va_list valist);
# 492 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wshadow"

  __attribute__((__format__ (gnu_printf, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) fprintf(FILE * __restrict__ _File,const char * __restrict__ _Format,...);
  __attribute__((__format__ (gnu_printf, 1, 2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) printf(const char * __restrict__ _Format,...);
  __attribute__((__format__ (gnu_printf, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) sprintf(char * __restrict__ _Dest,const char * __restrict__ _Format,...) ;

  __attribute__((__format__ (gnu_printf, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) vfprintf(FILE * __restrict__ _File,const char * __restrict__ _Format,va_list _ArgList);
  __attribute__((__format__ (gnu_printf, 1, 0))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) vprintf(const char * __restrict__ _Format,va_list _ArgList);
  __attribute__((__format__ (gnu_printf, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) vsprintf(char * __restrict__ _Dest,const char * __restrict__ _Format,va_list _Args) ;

 
  __attribute__((__format__ (gnu_scanf, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) fscanf(FILE * __restrict__ _File,const char * __restrict__ _Format,...);
 
  __attribute__((__format__ (gnu_scanf, 1, 2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) scanf(const char * __restrict__ _Format,...);
 
  __attribute__((__format__ (gnu_scanf, 2, 3))) __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) sscanf(const char * __restrict__ _Src,const char * __restrict__ _Format,...);







  __attribute__((__format__ (gnu_scanf, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int vfscanf (FILE *__stream, const char *__format, __builtin_va_list __local_argv);

  __attribute__((__format__ (gnu_scanf, 2, 0))) __attribute__ ((__nonnull__ (2)))
  int vsscanf (const char * __restrict__ __source, const char * __restrict__ __format, __builtin_va_list __local_argv);
  __attribute__((__format__ (gnu_scanf, 1, 0))) __attribute__ ((__nonnull__ (1)))
  int vscanf(const char *__format, __builtin_va_list __local_argv);


#pragma GCC diagnostic pop
# 603 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _filbuf(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _flsbuf(int _Ch,FILE *_File);



  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _fsopen(const char *_Filename,const char *_Mode,int _ShFlag);

  void __attribute__((__cdecl__)) clearerr(FILE *_File);
  int __attribute__((__cdecl__)) fclose(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fcloseall(void);



  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _fdopen(int _FileHandle,const char *_Mode);

  int __attribute__((__cdecl__)) feof(FILE *_File);
  int __attribute__((__cdecl__)) ferror(FILE *_File);
  int __attribute__((__cdecl__)) fflush(FILE *_File);
  int __attribute__((__cdecl__)) fgetc(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fgetchar(void);
  int __attribute__((__cdecl__)) fgetpos(FILE * __restrict__ _File ,fpos_t * __restrict__ _Pos);
  int __attribute__((__cdecl__)) fgetpos64(FILE * __restrict__ _File ,fpos_t * __restrict__ _Pos);
  char *__attribute__((__cdecl__)) fgets(char * __restrict__ _Buf,int _MaxCount,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fileno(FILE *_File);



  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _tempnam(const char *_DirName,const char *_FilePrefix);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _flushall(void);
  FILE *__attribute__((__cdecl__)) fopen(const char * __restrict__ _Filename,const char * __restrict__ _Mode) ;
  FILE *fopen64(const char * __restrict__ filename,const char * __restrict__ mode);
  int __attribute__((__cdecl__)) fputc(int _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fputchar(int _Ch);
  int __attribute__((__cdecl__)) fputs(const char * __restrict__ _Str,FILE * __restrict__ _File);
  size_t __attribute__((__cdecl__)) fread(void * __restrict__ _DstBuf,size_t _ElementSize,size_t _Count,FILE * __restrict__ _File);
  FILE *__attribute__((__cdecl__)) freopen(const char * __restrict__ _Filename,const char * __restrict__ _Mode,FILE * __restrict__ _File) ;
  int __attribute__((__cdecl__)) fsetpos(FILE *_File,const fpos_t *_Pos);
  int __attribute__((__cdecl__)) fsetpos64(FILE *_File,const fpos_t *_Pos);
  int __attribute__((__cdecl__)) fseek(FILE *_File,long _Offset,int _Origin);
  long __attribute__((__cdecl__)) ftell(FILE *_File);



  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fseeki64(FILE *_File,long long _Offset,int _Origin);
  __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _ftelli64(FILE *_File);

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int fseeko(FILE *_File, _off_t _Offset, int _Origin) {
    return fseek(_File, _Offset, _Origin);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int fseeko64(FILE *_File, _off64_t _Offset, int _Origin) {
    return _fseeki64(_File, _Offset, _Origin);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) _off_t ftello(FILE *_File) {
    return ftell(_File);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) _off64_t ftello64(FILE *_File) {
    return _ftelli64(_File);
  }
# 683 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
  size_t __attribute__((__cdecl__)) fwrite(const void * __restrict__ _Str,size_t _Size,size_t _Count,FILE * __restrict__ _File);
  int __attribute__((__cdecl__)) getc(FILE *_File);
  int __attribute__((__cdecl__)) getchar(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _getmaxstdio(void);
  char *__attribute__((__cdecl__)) gets(char *_Buffer) ;
  int __attribute__((__cdecl__)) _getw(FILE *_File);


  void __attribute__((__cdecl__)) perror(const char *_ErrMsg);


  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _pclose(FILE *_File);
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _popen(const char *_Command,const char *_Mode);





  int __attribute__((__cdecl__)) putc(int _Ch,FILE *_File);
  int __attribute__((__cdecl__)) putchar(int _Ch);
  int __attribute__((__cdecl__)) puts(const char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _putw(int _Word,FILE *_File);


  int __attribute__((__cdecl__)) remove(const char *_Filename);
  int __attribute__((__cdecl__)) rename(const char *_OldFilename,const char *_NewFilename);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _unlink(const char *_Filename);

  int __attribute__((__cdecl__)) unlink(const char *_Filename) ;


  void __attribute__((__cdecl__)) rewind(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _rmtmp(void);
  void __attribute__((__cdecl__)) setbuf(FILE * __restrict__ _File,char * __restrict__ _Buffer) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _setmaxstdio(int _Max);
  __attribute__ ((__dllimport__)) unsigned int __attribute__((__cdecl__)) _set_output_format(unsigned int _Format);
  __attribute__ ((__dllimport__)) unsigned int __attribute__((__cdecl__)) _get_output_format(void);
  int __attribute__((__cdecl__)) setvbuf(FILE * __restrict__ _File,char * __restrict__ _Buf,int _Mode,size_t _Size);

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  __attribute__ ((__pure__))
  __attribute__((__format__ (gnu_printf, 1, 2))) __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) _scprintf(const char * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vsprintf(0x0002ULL, ((void *)0), 0, _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  __attribute__((__format__ (gnu_scanf, 3, 4))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) _snscanf(const char * __restrict__ _Src,size_t _MaxCount,const char * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vsscanf(0, _Src, _MaxCount, _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }







  __attribute__ ((__pure__))
  __attribute__((__format__ (ms_printf, 1, 0))) __attribute__ ((__nonnull__ (1)))
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _vscprintf(const char * __restrict__ _Format,va_list _ArgList);
  FILE *__attribute__((__cdecl__)) tmpfile(void) ;
  char *__attribute__((__cdecl__)) tmpnam(char *_Buffer);
  int __attribute__((__cdecl__)) ungetc(int _Ch,FILE *_File);


  __attribute__((__format__ (gnu_printf, 3, 0))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) _vsnprintf(char * __restrict__ _Dest,size_t _Count,const char * __restrict__ _Format,va_list _Args) ;
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  __attribute__((__format__ (gnu_printf, 3, 4))) __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) _snprintf(char * __restrict__ _Dest,size_t _Count,const char * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = _vsnprintf(_Dest, _Count, _Format, __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
# 824 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wshadow"

  __attribute__((__format__ (gnu_printf, 3, 0))) __attribute__ ((__nonnull__ (3)))
  int vsnprintf (char * __restrict__ __stream, size_t __n, const char * __restrict__ __format, va_list __local_argv);

  __attribute__((__format__ (gnu_printf, 3, 4))) __attribute__ ((__nonnull__ (3)))
  int snprintf (char * __restrict__ __stream, size_t __n, const char * __restrict__ __format, ...);

#pragma GCC diagnostic pop
# 940 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _set_printf_count_output(int _Value);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _get_printf_count_output(void);




                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_swscanf(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,...);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vswscanf (const wchar_t * __restrict__ _Str,const wchar_t * __restrict__ Format,va_list argp);
                                                     __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_wscanf(const wchar_t * __restrict__ _Format,...);
                                                     __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_vwscanf(const wchar_t * __restrict__ Format, va_list argp);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_fwscanf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vfwscanf (FILE * __restrict__ fp, const wchar_t * __restrict__ Format,va_list argp);

                                                      __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_fwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
                                                      __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_wprintf(const wchar_t * __restrict__ _Format,...);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vfwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list _ArgList);
                                                     __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __mingw_vwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList);
                                                      __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_snwprintf (wchar_t * __restrict__ s, size_t n, const wchar_t * __restrict__ format, ...);
                                                      __attribute__ ((__nonnull__ (3)))
  int __attribute__((__cdecl__)) __mingw_vsnwprintf (wchar_t * __restrict__ , size_t, const wchar_t * __restrict__ , va_list);
                                                      __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_swprintf(wchar_t * __restrict__ , const wchar_t * __restrict__ , ...);
                                                      __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __mingw_vswprintf(wchar_t * __restrict__ , const wchar_t * __restrict__ ,va_list);

                                                    __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_swscanf(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,...);
                                                    __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_wscanf(const wchar_t * __restrict__ _Format,...);
                                                    __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_fwscanf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);

                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_fwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
                                                     __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_wprintf(const wchar_t * __restrict__ _Format,...);
                                                    __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vfwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list _ArgList);
                                                    __attribute__ ((__nonnull__ (1)))
  int __attribute__((__cdecl__)) __ms_vwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_swprintf(wchar_t * __restrict__ , const wchar_t * __restrict__ , ...);
                                                     __attribute__ ((__nonnull__ (2)))
  int __attribute__((__cdecl__)) __ms_vswprintf(wchar_t * __restrict__ , const wchar_t * __restrict__ ,va_list);


  int __attribute__((__cdecl__)) __stdio_common_vswprintf(unsigned long long options, wchar_t *str, size_t len, const wchar_t *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vfwprintf(unsigned long long options, FILE *file, const wchar_t *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vswscanf(unsigned long long options, const wchar_t *input, size_t length, const wchar_t *format, _locale_t locale, va_list valist);
  int __attribute__((__cdecl__)) __stdio_common_vfwscanf(unsigned long long options, FILE *file, const wchar_t *format, _locale_t locale, va_list valist);
# 1143 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) fwscanf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vfwscanf(0x0002ULL, _File, _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) swscanf(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vswscanf(0x0002ULL, _Src, (size_t)-1, _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) wscanf(const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vfwscanf(0x0002ULL, (__acrt_iob_func(0)), _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  __attribute__ ((__nonnull__ (2)))
  int vfwscanf (FILE *__stream, const wchar_t *__format, va_list __local_argv)
  {
    return __stdio_common_vfwscanf(0x0002ULL, __stream, __format, ((void *)0), __local_argv);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  __attribute__ ((__nonnull__ (2)))
  int vswscanf (const wchar_t * __restrict__ __source, const wchar_t * __restrict__ __format, va_list __local_argv)
  {
    return __stdio_common_vswscanf(0x0002ULL, __source, (size_t)-1, __format, ((void *)0), __local_argv);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  __attribute__ ((__nonnull__ (1)))
  int vwscanf(const wchar_t *__format, va_list __local_argv)
  {
    return __stdio_common_vfwscanf(0x0002ULL, (__acrt_iob_func(0)), __format, ((void *)0), __local_argv);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) fwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vfwprintf(0x0004ULL, _File, _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) wprintf(const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vfwprintf(0x0004ULL, (__acrt_iob_func(1)), _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) vfwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list _ArgList)
  {
    return __stdio_common_vfwprintf(0x0004ULL, _File, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) vwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList)
  {
    return __stdio_common_vfwprintf(0x0004ULL, (__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
  }
# 1269 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wfsopen(const wchar_t *_Filename,const wchar_t *_Mode,int _ShFlag);


  wint_t __attribute__((__cdecl__)) fgetwc(FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _fgetwchar(void);
  wint_t __attribute__((__cdecl__)) fputwc(wchar_t _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _fputwchar(wchar_t _Ch);
  wint_t __attribute__((__cdecl__)) getwc(FILE *_File);
  wint_t __attribute__((__cdecl__)) getwchar(void);
  wint_t __attribute__((__cdecl__)) putwc(wchar_t _Ch,FILE *_File);
  wint_t __attribute__((__cdecl__)) putwchar(wchar_t _Ch);
  wint_t __attribute__((__cdecl__)) ungetwc(wint_t _Ch,FILE *_File);
  wchar_t *__attribute__((__cdecl__)) fgetws(wchar_t * __restrict__ _Dst,int _SizeInWords,FILE * __restrict__ _File);
  int __attribute__((__cdecl__)) fputws(const wchar_t * __restrict__ _Str,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _getws(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _putws(const wchar_t *_Str);


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) _scwprintf(const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vswprintf(0x0004ULL | 0x0002ULL, ((void *)0), 0, _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) _snwprintf(wchar_t * __restrict__ _Dest,size_t _Count,const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vswprintf(0x0004ULL | 0x0001ULL, _Dest, _Count, _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  int __attribute__((__cdecl__)) _vsnwprintf(wchar_t * __restrict__ _Dest,size_t _Count,const wchar_t * __restrict__ _Format,va_list _Args) ;


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int snwprintf (wchar_t * __restrict__ s, size_t n, const wchar_t * __restrict__ format, ...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, format);
    __ret = __stdio_common_vswprintf(0x0004ULL | 0x0002ULL, s, n, format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) vsnwprintf (wchar_t * __restrict__ s, size_t n, const wchar_t * __restrict__ format, va_list arg)
  {
    int __ret = __stdio_common_vswprintf(0x0004ULL, s, n, format, ((void *)0), arg);
    return __ret < 0 ? -1 : __ret;
  }


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) _swprintf(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,...)
  {
    __builtin_va_list __ap;
    int __ret;
    __builtin_va_start(__ap, _Format);
    __ret = __stdio_common_vswprintf(0x0004ULL, _Dest, (size_t)-1, _Format, ((void *)0), __ap);
    __builtin_va_end(__ap);
    return __ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) _vswprintf(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,va_list _Args)
  {
    return __stdio_common_vswprintf(0x0004ULL, _Dest, (size_t)-1, _Format, ((void *)0), _Args);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
  int __attribute__((__cdecl__)) _vscwprintf(const wchar_t * __restrict__ _Format, va_list _ArgList)
  {
      int _Result = __stdio_common_vswprintf(0x0002ULL, ((void *)0), 0, _Format, ((void *)0), _ArgList);
      return _Result < 0 ? -1 : _Result;
  }
# 1386 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\swprintf.inl" 1 3
# 25 "c:\\mingw64\\x86_64-w64-mingw32\\include\\swprintf.inl" 3
static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
                                                      __attribute__ ((__nonnull__ (3)))
int vswprintf (wchar_t *__stream, size_t __count, const wchar_t *__format, __builtin_va_list __local_argv)
{
  return vsnwprintf( __stream, __count, __format, __local_argv );
}

static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__))
                                                      __attribute__ ((__nonnull__ (3)))
int swprintf (wchar_t *__stream, size_t __count, const wchar_t *__format, ...)
{
  int __retval;
  __builtin_va_list __local_argv;

  __builtin_va_start( __local_argv, __format );
  __retval = vswprintf( __stream, __count, __format, __local_argv );
  __builtin_va_end( __local_argv );
  return __retval;
}
# 1387 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 2 3
# 1396 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wtempnam(const wchar_t *_Directory,const wchar_t *_FilePrefix);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _snwscanf(const wchar_t * __restrict__ _Src,size_t _MaxCount,const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wfdopen(int _FileHandle ,const wchar_t *_Mode);
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wfopen(const wchar_t * __restrict__ _Filename,const wchar_t *__restrict__ _Mode) ;
  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wfreopen(const wchar_t * __restrict__ _Filename,const wchar_t * __restrict__ _Mode,FILE * __restrict__ _OldFile) ;



  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _wperror(const wchar_t *_ErrMsg);

  __attribute__ ((__dllimport__)) FILE *__attribute__((__cdecl__)) _wpopen(const wchar_t *_Command,const wchar_t *_Mode);




  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wremove(const wchar_t *_Filename);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wtmpnam(wchar_t *_Buffer);

  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _fgetwc_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _fputwc_nolock(wchar_t _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _ungetwc_nolock(wint_t _Ch,FILE *_File);
# 1441 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fgetc_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fputc_nolock(int _Char, FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _getc_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _putc_nolock(int _Char, FILE *_File);
# 1456 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _lock_file(FILE *_File);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _unlock_file(FILE *_File);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fclose_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fflush_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _fread_nolock(void * __restrict__ _DstBuf,size_t _ElementSize,size_t _Count,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fseek_nolock(FILE *_File,long _Offset,int _Origin);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _ftell_nolock(FILE *_File);
  __extension__ __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _fseeki64_nolock(FILE *_File,long long _Offset,int _Origin);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _ftelli64_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _fwrite_nolock(const void * __restrict__ _DstBuf,size_t _Size,size_t _Count,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _ungetc_nolock(int _Ch,FILE *_File);






  char *__attribute__((__cdecl__)) tempnam(const char *_Directory,const char *_FilePrefix) ;
  int __attribute__((__cdecl__)) fcloseall(void) ;
  FILE *__attribute__((__cdecl__)) fdopen(int _FileHandle,const char *_Format) ;
  int __attribute__((__cdecl__)) fgetchar(void) ;
  int __attribute__((__cdecl__)) fileno(FILE *_File) ;
  int __attribute__((__cdecl__)) flushall(void) ;
  int __attribute__((__cdecl__)) fputchar(int _Ch) ;
  int __attribute__((__cdecl__)) getw(FILE *_File) ;
  int __attribute__((__cdecl__)) putw(int _Ch,FILE *_File) ;
  int __attribute__((__cdecl__)) rmtmp(void) ;
# 1500 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
int __attribute__((__cdecl__)) __mingw_str_wide_utf8 (const wchar_t * const wptr, char **mbptr, size_t * buflen);
# 1514 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
int __attribute__((__cdecl__)) __mingw_str_utf8_wide (const char *const mbptr, wchar_t ** wptr, size_t * buflen);
# 1523 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
void __attribute__((__cdecl__)) __mingw_str_free(void *ptr);






  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnl(int _Mode,const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnle(int _Mode,const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnlp(int _Mode,const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnlpe(int _Mode,const wchar_t *_Filename,const wchar_t *_ArgList,...);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnv(int _Mode,const wchar_t *_Filename,const wchar_t *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnve(int _Mode,const wchar_t *_Filename,const wchar_t *const *_ArgList,const wchar_t *const *_Env);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnvp(int _Mode,const wchar_t *_Filename,const wchar_t *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _wspawnvpe(int _Mode,const wchar_t *_Filename,const wchar_t *const *_ArgList,const wchar_t *const *_Env);
# 1554 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 3
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnv(int _Mode,const char *_Filename,const char *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnve(int _Mode,const char *_Filename,const char *const *_ArgList,const char *const *_Env);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnvp(int _Mode,const char *_Filename,const char *const *_ArgList);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _spawnvpe(int _Mode,const char *_Filename,const char *const *_ArgList,const char *const *_Env);







       
       
       
       

#pragma pack(pop)

# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\stdio_s.h" 1 3
# 9 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\stdio_s.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 1 3
# 10 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\stdio_s.h" 2 3
# 29 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\stdio_s.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) clearerr_s(FILE *_File);

  size_t __attribute__((__cdecl__)) fread_s(void *_DstBuf,size_t _DstSize,size_t _ElementSize,size_t _Count,FILE *_File);


  int __attribute__((__cdecl__)) __stdio_common_vsprintf_s(unsigned long long _Options, char *_Str, size_t _Len, const char *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vsprintf_p(unsigned long long _Options, char *_Str, size_t _Len, const char *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vsnprintf_s(unsigned long long _Options, char *_Str, size_t _Len, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vfprintf_s(unsigned long long _Options, FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vfprintf_p(unsigned long long _Options, FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList);

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfscanf_s_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfscanf(0x0001ULL, _File, _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fscanf_s_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfscanf_s_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) fscanf_s(FILE *_File, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfscanf_s_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scanf_s_l(const char *_Format, _locale_t _Locale ,...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) scanf_s(const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfscanf_s_l((__acrt_iob_func(0)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfscanf_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfscanf(0, _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fscanf_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfscanf_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scanf_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfscanf_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsscanf_s_l(const char *_Src, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsscanf(0x0001ULL, _Src, (size_t)-1, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vsscanf_s(const char *_Src, const char *_Format, va_list _ArgList)
  {
    return _vsscanf_s_l(_Src, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sscanf_s_l(const char *_Src, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsscanf_s_l(_Src, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) sscanf_s(const char *_Src, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsscanf_s_l(_Src, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsscanf_l(const char *_Src, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsscanf(0, _Src, (size_t)-1, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sscanf_l(const char *_Src, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsscanf_l(_Src, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snscanf_s_l(const char *_Src, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = __stdio_common_vsscanf(0x0001ULL, _Src, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snscanf_s(const char *_Src, size_t _MaxCount, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = __stdio_common_vsscanf(0x0001ULL, _Src, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snscanf_l(const char *_Src, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = __stdio_common_vsscanf(0, _Src, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }


  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfprintf_s_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfprintf_s(0, _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vfprintf_s(FILE *_File, const char *_Format, va_list _ArgList)
  {
    return _vfprintf_s_l(_File, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vprintf_s_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vprintf_s(const char *_Format, va_list _ArgList)
  {
    return _vfprintf_s_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fprintf_s_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_s_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _printf_s_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) fprintf_s(FILE *_File, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfprintf_s_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) printf_s(const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfprintf_s_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_c_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf(0, _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_c(char *_DstBuf, size_t _MaxCount, const char *_Format, va_list _ArgList)
  {
    return _vsnprintf_c_l(_DstBuf, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_c_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnprintf_c_l(_DstBuf, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_c(char *_DstBuf, size_t _MaxCount, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsnprintf_c_l(_DstBuf, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_s_l(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsnprintf_s(0, _DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vsnprintf_s(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, va_list _ArgList)
  {
    return _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_s(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, va_list _ArgList)
  {
    return _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_s_l(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_s(char *_DstBuf, size_t _DstSize, size_t _MaxCount, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsnprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsprintf_s_l(char *_DstBuf, size_t _DstSize, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf_s(0, _DstBuf, _DstSize, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vsprintf_s(char *_DstBuf, size_t _Size, const char *_Format, va_list _ArgList)
  {
    return _vsprintf_s_l(_DstBuf, _Size, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sprintf_s_l(char *_DstBuf, size_t _DstSize, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsprintf_s_l(_DstBuf, _DstSize, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) sprintf_s(char *_DstBuf, size_t _DstSize, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsprintf_s_l(_DstBuf, _DstSize, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfprintf_p_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfprintf_p(0, _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfprintf_p(FILE *_File, const char *_Format, va_list _ArgList)
  {
    return _vfprintf_p_l(_File, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vprintf_p_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vprintf_p(const char *_Format, va_list _ArgList)
  {
    return _vfprintf_p_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fprintf_p_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = __stdio_common_vfprintf_p(0, _File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fprintf_p(FILE *_File, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfprintf_p_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _printf_p_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_p_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _printf_p(const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfprintf_p_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsprintf_p_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf_p(0, _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsprintf_p(char *_Dst, size_t _MaxCount, const char *_Format, va_list _ArgList)
  {
    return _vsprintf_p_l(_Dst, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sprintf_p_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsprintf_p_l(_DstBuf, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sprintf_p(char *_Dst, size_t _MaxCount, const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsprintf_p_l(_Dst, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscprintf_p_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf_p(0x0002ULL, ((void *)0), 0, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscprintf_p(const char *_Format, va_list _ArgList)
  {
    return _vscprintf_p_l(_Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scprintf_p_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vscprintf_p_l(_Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scprintf_p(const char *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vscprintf_p_l(_Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfprintf_l(FILE *_File, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfprintf(0, _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vprintf_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fprintf_l(FILE *_File, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _printf_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfprintf_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnprintf_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf(0x0001ULL, _DstBuf, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snprintf_l(char *_DstBuf, size_t _MaxCount, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnprintf_l(_DstBuf, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsprintf_l(char *_DstBuf, const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vsnprintf_l(_DstBuf, (size_t)-1, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _sprintf_l(char *_DstBuf, const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsprintf_l(_DstBuf, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vscprintf_l(const char *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsprintf(0x0002ULL, ((void *)0), 0, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _scprintf_l(const char *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vscprintf_l(_Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
# 562 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\stdio_s.h" 3
 
 
 
 
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) fopen_s(FILE **_File,const char *_Filename,const char *_Mode);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) freopen_s(FILE** _File, const char *_Filename, const char *_Mode, FILE *_Stream);

  __attribute__ ((__dllimport__)) char* __attribute__((__cdecl__)) gets_s(char*,rsize_t);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) tmpnam_s(char*,rsize_t);
 




  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _getws_s(wchar_t *_Str,size_t _SizeInWords);
 


  int __attribute__((__cdecl__)) __stdio_common_vswprintf_s(unsigned long long _Options, wchar_t *_Str, size_t _Len, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vsnwprintf_s(unsigned long long _Options, wchar_t *_Str, size_t _Len, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);
  int __attribute__((__cdecl__)) __stdio_common_vfwprintf_s(unsigned long long _Options, FILE *_File, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList);

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfwscanf_s_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfwscanf(0x0002ULL | 0x0001ULL, _File, _Format, _Locale, _ArgList);
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fwscanf_s_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwscanf_s_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) fwscanf_s(FILE *_File, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwscanf_s_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _wscanf_s_l(const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwscanf_s_l((__acrt_iob_func(0)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) wscanf_s(const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwscanf_s_l((__acrt_iob_func(0)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vswscanf_s_l(const wchar_t *_Src, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswscanf(0x0002ULL | 0x0001ULL, _Src, (size_t)-1, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _swscanf_s_l(const wchar_t *_Src, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vswscanf_s_l(_Src, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) swscanf_s(const wchar_t *_Src, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vswscanf_s_l(_Src, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnwscanf_s_l(const wchar_t *_Src, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswscanf(0x0002ULL | 0x0001ULL, _Src, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwscanf_s_l(const wchar_t *_Src, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnwscanf_s_l(_Src, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwscanf_s(const wchar_t *_Src, size_t _MaxCount, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsnwscanf_s_l(_Src, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vfwprintf_s_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vfwprintf_s(0x0004ULL, _File, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vwprintf_s_l(const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return _vfwprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vfwprintf_s(FILE *_File, const wchar_t *_Format, va_list _ArgList)
  {
    return _vfwprintf_s_l(_File, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vwprintf_s(const wchar_t *_Format, va_list _ArgList)
  {
    return _vfwprintf_s_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _fwprintf_s_l(FILE *_File, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwprintf_s_l(_File, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _wprintf_s_l(const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vfwprintf_s_l((__acrt_iob_func(1)), _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) fwprintf_s(FILE *_File, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwprintf_s_l(_File, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) wprintf_s(const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vfwprintf_s_l((__acrt_iob_func(1)), _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vswprintf_s_l(wchar_t *_DstBuf, size_t _DstSize, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vswprintf_s(0x0004ULL, _DstBuf, _DstSize, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) vswprintf_s(wchar_t *_DstBuf, size_t _DstSize, const wchar_t *_Format, va_list _ArgList)
  {
    return _vswprintf_s_l(_DstBuf, _DstSize, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _swprintf_s_l(wchar_t *_DstBuf, size_t _DstSize, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vswprintf_s_l(_DstBuf, _DstSize, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) swprintf_s(wchar_t *_DstBuf, size_t _DstSize, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vswprintf_s_l(_DstBuf, _DstSize, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }

  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnwprintf_s_l(wchar_t *_DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, va_list _ArgList)
  {
    return __stdio_common_vsnwprintf_s(0x0004ULL, _DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _vsnwprintf_s(wchar_t *_DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t *_Format, va_list _ArgList)
  {
    return _vsnwprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwprintf_s_l(wchar_t *_DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t *_Format, _locale_t _Locale, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Locale);
    _Ret = _vsnwprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, _Locale, _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
  static __attribute__ ((__unused__)) __inline__ __attribute__((__cdecl__)) int __attribute__((__cdecl__)) _snwprintf_s(wchar_t *_DstBuf, size_t _DstSize, size_t _MaxCount, const wchar_t *_Format, ...)
  {
    __builtin_va_list _ArgList;
    int _Ret;
    __builtin_va_start(_ArgList, _Format);
    _Ret = _vsnwprintf_s_l(_DstBuf, _DstSize, _MaxCount, _Format, ((void *)0), _ArgList);
    __builtin_va_end(_ArgList);
    return _Ret;
  }
# 818 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\stdio_s.h" 3
 
 
 
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wfopen_s(FILE **_File,const wchar_t *_Filename,const wchar_t *_Mode);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wfreopen_s(FILE **_File,const wchar_t *_Filename,const wchar_t *_Mode,FILE *_OldFile);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wtmpnam_s(wchar_t *_DstBuf,size_t _SizeInWords);
 
# 868 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\stdio_s.h" 3
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _fread_nolock_s(void *_DstBuf,size_t _DstSize,size_t _ElementSize,size_t _Count,FILE *_File);
# 1573 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdio.h" 2 3
# 9 "Entidades/Relatorios/../../tools.h" 2
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 1 3
# 10 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt_wstdlib.h" 1 3
# 15 "c:\\mingw64\\x86_64-w64-mingw32\\include\\corecrt_wstdlib.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _itow_s (int _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ltow_s (long _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ultow_s (unsigned long _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wgetenv_s(size_t *_ReturnSize,wchar_t *_DstBuf,size_t _DstSizeInWords,const wchar_t *_VarName);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wdupenv_s(wchar_t **_Buffer,size_t *_BufferSizeInWords,const wchar_t *_VarName);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _i64tow_s(long long _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ui64tow_s(unsigned long long _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wmakepath_s(wchar_t *_PathResult,size_t _SizeInWords,const wchar_t *_Drive,const wchar_t *_Dir,const wchar_t *_Filename,const wchar_t *_Ext);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wputenv_s(const wchar_t *_Name,const wchar_t *_Value);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wsearchenv_s(const wchar_t *_Filename,const wchar_t *_EnvVar,wchar_t *_ResultPath,size_t _SizeInWords);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wsplitpath_s(const wchar_t *_FullPath,wchar_t *_Drive,size_t _DriveSizeInWords,wchar_t *_Dir,size_t _DirSizeInWords,wchar_t *_Filename,size_t _FilenameSizeInWords,wchar_t *_Ext,size_t _ExtSizeInWords);
 
# 11 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 2 3
# 1 "c:\\mingw64\\lib\\gcc\\x86_64-w64-mingw32\\12.2.0\\include-fixed\\limits.h" 1 3 4
# 34 "c:\\mingw64\\lib\\gcc\\x86_64-w64-mingw32\\12.2.0\\include-fixed\\limits.h" 3 4
# 1 "c:\\mingw64\\lib\\gcc\\x86_64-w64-mingw32\\12.2.0\\include-fixed\\syslimits.h" 1 3 4






# 1 "c:\\mingw64\\lib\\gcc\\x86_64-w64-mingw32\\12.2.0\\include-fixed\\limits.h" 1 3 4
# 203 "c:\\mingw64\\lib\\gcc\\x86_64-w64-mingw32\\12.2.0\\include-fixed\\limits.h" 3 4
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\limits.h" 1 3 4





# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\crtdefs.h" 1 3 4
# 7 "c:\\mingw64\\x86_64-w64-mingw32\\include\\limits.h" 2 3 4
# 204 "c:\\mingw64\\lib\\gcc\\x86_64-w64-mingw32\\12.2.0\\include-fixed\\limits.h" 2 3 4
# 8 "c:\\mingw64\\lib\\gcc\\x86_64-w64-mingw32\\12.2.0\\include-fixed\\syslimits.h" 2 3 4
# 35 "c:\\mingw64\\lib\\gcc\\x86_64-w64-mingw32\\12.2.0\\include-fixed\\limits.h" 2 3 4
# 12 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 2 3
# 26 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
#pragma pack(push,_CRT_PACKING)
# 50 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
  typedef int (__attribute__((__cdecl__)) *_onexit_t)(void);
# 60 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
  typedef struct _div_t {
    int quot;
    int rem;
  } div_t;

  typedef struct _ldiv_t {
    long quot;
    long rem;
  } ldiv_t;





#pragma pack(4)
  typedef struct {
    unsigned char ld[10];
  } _LDOUBLE;
#pragma pack()



  typedef struct {
    double x;
  } _CRT_DOUBLE;

  typedef struct {
    float f;
  } _CRT_FLOAT;

       


  typedef struct {
    long double x;
  } _LONGDOUBLE;

       

#pragma pack(4)
  typedef struct {
    unsigned char ld12[12];
  } _LDBL12;
#pragma pack()
# 121 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
__attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) ___mb_cur_max_func(void);
# 143 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
  typedef void (__attribute__((__cdecl__)) *_purecall_handler)(void);

  __attribute__ ((__dllimport__)) _purecall_handler __attribute__((__cdecl__)) _set_purecall_handler(_purecall_handler _Handler);
  __attribute__ ((__dllimport__)) _purecall_handler __attribute__((__cdecl__)) _get_purecall_handler(void);

  typedef void (__attribute__((__cdecl__)) *_invalid_parameter_handler)(const wchar_t *,const wchar_t *,const wchar_t *,unsigned int,uintptr_t);
  __attribute__ ((__dllimport__)) _invalid_parameter_handler __attribute__((__cdecl__)) _set_invalid_parameter_handler(_invalid_parameter_handler _Handler);
  __attribute__ ((__dllimport__)) _invalid_parameter_handler __attribute__((__cdecl__)) _get_invalid_parameter_handler(void);



  __attribute__ ((__dllimport__)) extern int *__attribute__((__cdecl__)) _errno(void);

  errno_t __attribute__((__cdecl__)) _set_errno(int _Value);
  errno_t __attribute__((__cdecl__)) _get_errno(int *_Value);

  __attribute__ ((__dllimport__)) unsigned long *__attribute__((__cdecl__)) __doserrno(void);

  errno_t __attribute__((__cdecl__)) _set_doserrno(unsigned long _Value);
  errno_t __attribute__((__cdecl__)) _get_doserrno(unsigned long *_Value);





  __attribute__ ((__dllimport__)) char **__attribute__((__cdecl__)) __sys_errlist(void);
  __attribute__ ((__dllimport__)) int *__attribute__((__cdecl__)) __sys_nerr(void);
# 180 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
  __attribute__ ((__dllimport__)) char ***__attribute__((__cdecl__)) __p___argv(void);
  __attribute__ ((__dllimport__)) int *__attribute__((__cdecl__)) __p__fmode(void);

  __attribute__ ((__dllimport__)) int *__attribute__((__cdecl__)) __p___argc(void);
  __attribute__ ((__dllimport__)) wchar_t ***__attribute__((__cdecl__)) __p___wargv(void);
  __attribute__ ((__dllimport__)) char ***__attribute__((__cdecl__)) __p__environ(void);
  __attribute__ ((__dllimport__)) wchar_t ***__attribute__((__cdecl__)) __p__wenviron(void);
  __attribute__ ((__dllimport__)) char **__attribute__((__cdecl__)) __p__pgmptr(void);
  __attribute__ ((__dllimport__)) wchar_t **__attribute__((__cdecl__)) __p__wpgmptr(void);


  errno_t __attribute__((__cdecl__)) _get_pgmptr(char **_Value);
  errno_t __attribute__((__cdecl__)) _get_wpgmptr(wchar_t **_Value);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _set_fmode(int _Mode);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _get_fmode(int *_PMode);
# 370 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
  errno_t __attribute__((__cdecl__)) _get_osplatform(unsigned int *_Value);
  errno_t __attribute__((__cdecl__)) _get_osver(unsigned int *_Value);
  errno_t __attribute__((__cdecl__)) _get_winver(unsigned int *_Value);
  errno_t __attribute__((__cdecl__)) _get_winmajor(unsigned int *_Value);
  errno_t __attribute__((__cdecl__)) _get_winminor(unsigned int *_Value);
# 388 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) exit(int _Code) __attribute__ ((__noreturn__));
  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _exit(int _Code) __attribute__ ((__noreturn__));

  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) quick_exit(int _Code) __attribute__ ((__noreturn__));




  void __attribute__((__cdecl__)) _Exit(int) __attribute__ ((__noreturn__));






       

  void __attribute__((__cdecl__)) __attribute__ ((__noreturn__)) abort(void);
       



  __attribute__ ((__dllimport__)) unsigned int __attribute__((__cdecl__)) _set_abort_behavior(unsigned int _Flags,unsigned int _Mask);



  int __attribute__((__cdecl__)) abs(int _X);
  long __attribute__((__cdecl__)) labs(long _X);


  __extension__ long long __attribute__((__cdecl__)) _abs64(long long);

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) long long __attribute__((__cdecl__)) _abs64(long long x) {
    return __builtin_llabs(x);
  }


  int __attribute__((__cdecl__)) atexit(void (__attribute__((__cdecl__)) *)(void));

  int __attribute__((__cdecl__)) at_quick_exit(void (__attribute__((__cdecl__)) *)(void));



  double __attribute__((__cdecl__)) atof(const char *_String);
  double __attribute__((__cdecl__)) _atof_l(const char *_String,_locale_t _Locale);

  int __attribute__((__cdecl__)) atoi(const char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoi_l(const char *_Str,_locale_t _Locale);
  long __attribute__((__cdecl__)) atol(const char *_Str);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _atol_l(const char *_Str,_locale_t _Locale);


  void *__attribute__((__cdecl__)) bsearch(const void *_Key,const void *_Base,size_t _NumOfElements,size_t _SizeOfElements,int (__attribute__((__cdecl__)) *_PtFuncCompare)(const void *,const void *));
  void __attribute__((__cdecl__)) qsort(void *_Base,size_t _NumOfElements,size_t _SizeOfElements,int (__attribute__((__cdecl__)) *_PtFuncCompare)(const void *,const void *));

  unsigned short __attribute__((__cdecl__)) _byteswap_ushort(unsigned short _Short);
  unsigned long __attribute__((__cdecl__)) _byteswap_ulong (unsigned long _Long);
  __extension__ unsigned long long __attribute__((__cdecl__)) _byteswap_uint64(unsigned long long _Int64);
  div_t __attribute__((__cdecl__)) div(int _Numerator,int _Denominator);
  char *__attribute__((__cdecl__)) getenv(const char *_VarName) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _itoa(int _Value,char *_Dest,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _i64toa(long long _Val,char *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ui64toa(unsigned long long _Val,char *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _atoi64(const char *_String);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _atoi64_l(const char *_String,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _strtoi64(const char *_String,char **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _strtoi64_l(const char *_String,char **_EndPtr,int _Radix,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long __attribute__((__cdecl__)) _strtoui64(const char *_String,char **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long __attribute__((__cdecl__)) _strtoui64_l(const char *_String,char **_EndPtr,int _Radix,_locale_t _Locale);
  ldiv_t __attribute__((__cdecl__)) ldiv(long _Numerator,long _Denominator);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ltoa(long _Value,char *_Dest,int _Radix) ;
  int __attribute__((__cdecl__)) mblen(const char *_Ch,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _mblen_l(const char *_Ch,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstrlen(const char *_Str);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstrlen_l(const char *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstrnlen(const char *_Str,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstrnlen_l(const char *_Str,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) mbtowc(wchar_t * __restrict__ _DstCh,const char * __restrict__ _SrcCh,size_t _SrcSizeInBytes);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _mbtowc_l(wchar_t * __restrict__ _DstCh,const char * __restrict__ _SrcCh,size_t _SrcSizeInBytes,_locale_t _Locale);
  size_t __attribute__((__cdecl__)) mbstowcs(wchar_t * __restrict__ _Dest,const char * __restrict__ _Source,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstowcs_l(wchar_t * __restrict__ _Dest,const char * __restrict__ _Source,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) mkstemp(char *template_name);
  int __attribute__((__cdecl__)) rand(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _set_error_mode(int _Mode);
  void __attribute__((__cdecl__)) srand(unsigned int _Seed);
# 499 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
  double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtod(const char * __restrict__ _Str,char ** __restrict__ _EndPtr);
  float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtof(const char * __restrict__ nptr, char ** __restrict__ endptr);

  long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtold(const char * __restrict__ , char ** __restrict__ );


  extern double __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
  __strtod (const char * __restrict__ , char ** __restrict__);







  float __attribute__((__cdecl__)) __mingw_strtof (const char * __restrict__, char ** __restrict__);
  double __attribute__((__cdecl__)) __mingw_strtod (const char * __restrict__, char ** __restrict__);
  long double __attribute__((__cdecl__)) __mingw_strtold(const char * __restrict__, char ** __restrict__);

  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _strtod_l(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,_locale_t _Locale);
  long __attribute__((__cdecl__)) strtol(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _strtol_l(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);
  unsigned long __attribute__((__cdecl__)) strtoul(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) unsigned long __attribute__((__cdecl__)) _strtoul_l(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);


  int __attribute__((__cdecl__)) system(const char *_Command);

  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ultoa(unsigned long _Value,char *_Dest,int _Radix) ;
  int __attribute__((__cdecl__)) wctomb(char *_MbCh,wchar_t _WCh) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wctomb_l(char *_MbCh,wchar_t _WCh,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) wcstombs(char * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcstombs_l(char * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _MaxCount,_locale_t _Locale) ;



  void *__attribute__((__cdecl__)) calloc(size_t _NumOfElements,size_t _SizeOfElements);
  void __attribute__((__cdecl__)) free(void *_Memory);
  void *__attribute__((__cdecl__)) malloc(size_t _Size);
  void *__attribute__((__cdecl__)) realloc(void *_Memory,size_t _NewSize);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _recalloc(void *_Memory,size_t _Count,size_t _Size);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _aligned_free(void *_Memory);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_malloc(size_t _Size,size_t _Alignment);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_offset_malloc(size_t _Size,size_t _Alignment,size_t _Offset);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_realloc(void *_Memory,size_t _Size,size_t _Alignment);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_recalloc(void *_Memory,size_t _Count,size_t _Size,size_t _Alignment);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_offset_realloc(void *_Memory,size_t _Size,size_t _Alignment,size_t _Offset);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_offset_recalloc(void *_Memory,size_t _Count,size_t _Size,size_t _Alignment,size_t _Offset);





  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _itow(int _Value,wchar_t *_Dest,int _Radix) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _ltow(long _Value,wchar_t *_Dest,int _Radix) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _ultow(unsigned long _Value,wchar_t *_Dest,int _Radix) ;

  double __attribute__((__cdecl__)) __mingw_wcstod(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr);
  float __attribute__((__cdecl__)) __mingw_wcstof(const wchar_t * __restrict__ nptr, wchar_t ** __restrict__ endptr);
  long double __attribute__((__cdecl__)) __mingw_wcstold(const wchar_t * __restrict__, wchar_t ** __restrict__);
# 571 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
  double __attribute__((__cdecl__)) wcstod(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr);
  float __attribute__((__cdecl__)) wcstof(const wchar_t * __restrict__ nptr, wchar_t ** __restrict__ endptr);


  long double __attribute__((__cdecl__)) wcstold(const wchar_t * __restrict__, wchar_t ** __restrict__);

  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _wcstod_l(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,_locale_t _Locale);
  long __attribute__((__cdecl__)) wcstol(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _wcstol_l(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);
  unsigned long __attribute__((__cdecl__)) wcstoul(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) unsigned long __attribute__((__cdecl__)) _wcstoul_l(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wgetenv(const wchar_t *_VarName) ;


  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wsystem(const wchar_t *_Command);

  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _wtof(const wchar_t *_Str);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _wtof_l(const wchar_t *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wtoi(const wchar_t *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wtoi_l(const wchar_t *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _wtol(const wchar_t *_Str);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _wtol_l(const wchar_t *_Str,_locale_t _Locale);

  __extension__ __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _i64tow(long long _Val,wchar_t *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _ui64tow(unsigned long long _Val,wchar_t *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _wtoi64(const wchar_t *_Str);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _wtoi64_l(const wchar_t *_Str,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _wcstoi64(const wchar_t *_Str,wchar_t **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _wcstoi64_l(const wchar_t *_Str,wchar_t **_EndPtr,int _Radix,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long __attribute__((__cdecl__)) _wcstoui64(const wchar_t *_Str,wchar_t **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long __attribute__((__cdecl__)) _wcstoui64_l(const wchar_t *_Str ,wchar_t **_EndPtr,int _Radix,_locale_t _Locale);


  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _putenv(const char *_EnvString);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wputenv(const wchar_t *_EnvString);



  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _fullpath(char *_FullPath,const char *_Path,size_t _SizeInBytes);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ecvt(double _Val,int _NumOfDigits,int *_PtDec,int *_PtSign) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _fcvt(double _Val,int _NumOfDec,int *_PtDec,int *_PtSign) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _gcvt(double _Val,int _NumOfDigits,char *_DstBuf) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atodbl(_CRT_DOUBLE *_Result,char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoldbl(_LDOUBLE *_Result,char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoflt(_CRT_FLOAT *_Result,char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atodbl_l(_CRT_DOUBLE *_Result,char *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoldbl_l(_LDOUBLE *_Result,char *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoflt_l(_CRT_FLOAT *_Result,char *_Str,_locale_t _Locale);
# 634 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
unsigned long __attribute__((__cdecl__)) _lrotl(unsigned long,int);
unsigned long __attribute__((__cdecl__)) _lrotr(unsigned long,int);





  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _makepath(char *_Path,const char *_Drive,const char *_Dir,const char *_Filename,const char *_Ext);
  _onexit_t __attribute__((__cdecl__)) _onexit(_onexit_t _Func);





       
       


  __extension__ unsigned long long __attribute__((__cdecl__)) _rotl64(unsigned long long _Val,int _Shift);
  __extension__ unsigned long long __attribute__((__cdecl__)) _rotr64(unsigned long long Value,int Shift);
       
       
       
       


  unsigned int __attribute__((__cdecl__)) _rotr(unsigned int _Val,int _Shift);
  unsigned int __attribute__((__cdecl__)) _rotl(unsigned int _Val,int _Shift);
       
       
  __extension__ unsigned long long __attribute__((__cdecl__)) _rotr64(unsigned long long _Val,int _Shift);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _searchenv(const char *_Filename,const char *_EnvVar,char *_ResultPath) ;
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _splitpath(const char *_FullPath,char *_Drive,char *_Dir,char *_Filename,char *_Ext) ;
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _swab(char *_Buf1,char *_Buf2,int _SizeInBytes);



  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wfullpath(wchar_t *_FullPath,const wchar_t *_Path,size_t _SizeInWords);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _wmakepath(wchar_t *_ResultPath,const wchar_t *_Drive,const wchar_t *_Dir,const wchar_t *_Filename,const wchar_t *_Ext);




  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _wsearchenv(const wchar_t *_Filename,const wchar_t *_EnvVar,wchar_t *_ResultPath) ;
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _wsplitpath(const wchar_t *_FullPath,wchar_t *_Drive,wchar_t *_Dir,wchar_t *_Filename,wchar_t *_Ext) ;


  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _beep(unsigned _Frequency,unsigned _Duration) __attribute__ ((__deprecated__));

  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _seterrormode(int _Mode) __attribute__ ((__deprecated__));
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _sleep(unsigned long _Duration) __attribute__ ((__deprecated__));
# 705 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
  char *__attribute__((__cdecl__)) ecvt(double _Val,int _NumOfDigits,int *_PtDec,int *_PtSign) ;
  char *__attribute__((__cdecl__)) fcvt(double _Val,int _NumOfDec,int *_PtDec,int *_PtSign) ;
  char *__attribute__((__cdecl__)) gcvt(double _Val,int _NumOfDigits,char *_DstBuf) ;
  char *__attribute__((__cdecl__)) itoa(int _Val,char *_DstBuf,int _Radix) ;
  char *__attribute__((__cdecl__)) ltoa(long _Val,char *_DstBuf,int _Radix) ;
  int __attribute__((__cdecl__)) putenv(const char *_EnvString) ;



  void __attribute__((__cdecl__)) swab(char *_Buf1,char *_Buf2,int _SizeInBytes) ;


  char *__attribute__((__cdecl__)) ultoa(unsigned long _Val,char *_Dstbuf,int _Radix) ;
  _onexit_t __attribute__((__cdecl__)) onexit(_onexit_t _Func);





  typedef struct { __extension__ long long quot, rem; } lldiv_t;

  __extension__ lldiv_t __attribute__((__cdecl__)) lldiv(long long, long long);

  __extension__ long long __attribute__((__cdecl__)) llabs(long long);




  __extension__ long long __attribute__((__cdecl__)) strtoll(const char * __restrict__, char ** __restrict, int);
  __extension__ unsigned long long __attribute__((__cdecl__)) strtoull(const char * __restrict__, char ** __restrict__, int);


  __extension__ long long __attribute__((__cdecl__)) atoll (const char *);


  __extension__ long long __attribute__((__cdecl__)) wtoll (const wchar_t *);
  __extension__ char *__attribute__((__cdecl__)) lltoa (long long, char *, int);
  __extension__ char *__attribute__((__cdecl__)) ulltoa (unsigned long long , char *, int);
  __extension__ wchar_t *__attribute__((__cdecl__)) lltow (long long, wchar_t *, int);
  __extension__ wchar_t *__attribute__((__cdecl__)) ulltow (unsigned long long, wchar_t *, int);
# 763 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 3
#pragma pack(pop)

# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\stdlib_s.h" 1 3
# 9 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\stdlib_s.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 1 3
# 10 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\stdlib_s.h" 2 3





  __attribute__ ((__dllimport__)) void * __attribute__((__cdecl__)) bsearch_s(const void *_Key,const void *_Base,rsize_t _NumOfElements,rsize_t _SizeOfElements,int (__attribute__((__cdecl__)) * _PtFuncCompare)(void *, const void *, const void *), void *_Context);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _dupenv_s(char **_PBuffer,size_t *_PBufferSizeInBytes,const char *_VarName);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) getenv_s(size_t *_ReturnSize,char *_DstBuf,rsize_t _DstSize,const char *_VarName);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _itoa_s(int _Value,char *_DstBuf,size_t _Size,int _Radix);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _i64toa_s(long long _Val,char *_DstBuf,size_t _Size,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ui64toa_s(unsigned long long _Val,char *_DstBuf,size_t _Size,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ltoa_s(long _Val,char *_DstBuf,size_t _Size,int _Radix);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) mbstowcs_s(size_t *_PtNumOfCharConverted,wchar_t *_DstBuf,size_t _SizeInWords,const char *_SrcBuf,size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _mbstowcs_s_l(size_t *_PtNumOfCharConverted,wchar_t *_DstBuf,size_t _SizeInWords,const char *_SrcBuf,size_t _MaxCount,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ultoa_s(unsigned long _Val,char *_DstBuf,size_t _Size,int _Radix);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wctomb_s(int *_SizeConverted,char *_MbCh,rsize_t _SizeInBytes,wchar_t _WCh);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wctomb_s_l(int *_SizeConverted,char *_MbCh,size_t _SizeInBytes,wchar_t _WCh,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcstombs_s(size_t *_PtNumOfCharConverted,char *_Dst,size_t _DstSizeInBytes,const wchar_t *_Src,size_t _MaxCountInBytes);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcstombs_s_l(size_t *_PtNumOfCharConverted,char *_Dst,size_t _DstSizeInBytes,const wchar_t *_Src,size_t _MaxCountInBytes,_locale_t _Locale);
 


  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ecvt_s(char *_DstBuf,size_t _Size,double _Val,int _NumOfDights,int *_PtDec,int *_PtSign);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _fcvt_s(char *_DstBuf,size_t _Size,double _Val,int _NumOfDec,int *_PtDec,int *_PtSign);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _gcvt_s(char *_DstBuf,size_t _Size,double _Val,int _NumOfDigits);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _makepath_s(char *_PathResult,size_t _Size,const char *_Drive,const char *_Dir,const char *_Filename,const char *_Ext);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _putenv_s(const char *_Name,const char *_Value);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _searchenv_s(const char *_Filename,const char *_EnvVar,char *_ResultPath,size_t _SizeInBytes);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _splitpath_s(const char *_FullPath,char *_Drive,size_t _DriveSize,char *_Dir,size_t _DirSize,char *_Filename,size_t _FilenameSize,char *_Ext,size_t _ExtSize);
 



  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) qsort_s(void *_Base,size_t _NumOfElements,size_t _SizeOfElements,int (__attribute__((__cdecl__)) *_PtFuncCompare)(void *,const void *,const void *),void *_Context);
# 766 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 2 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\malloc.h" 1 3
# 11 "c:\\mingw64\\x86_64-w64-mingw32\\include\\malloc.h" 3
#pragma pack(push,_CRT_PACKING)
# 46 "c:\\mingw64\\x86_64-w64-mingw32\\include\\malloc.h" 3
  typedef struct _heapinfo {
    int *_pentry;
    size_t _size;
    int _useflag;
  } _HEAPINFO;


  extern unsigned int _amblksiz;
# 74 "c:\\mingw64\\x86_64-w64-mingw32\\include\\malloc.h" 3
void * __mingw_aligned_malloc (size_t _Size, size_t _Alignment);
void __mingw_aligned_free (void *_Memory);
void * __mingw_aligned_offset_realloc (void *_Memory, size_t _Size, size_t _Alignment, size_t _Offset);
void * __mingw_aligned_realloc (void *_Memory, size_t _Size, size_t _Offset);


# 1 "c:\\mingw64\\lib\\gcc\\x86_64-w64-mingw32\\12.2.0\\include\\mm_malloc.h" 1 3 4
# 29 "c:\\mingw64\\lib\\gcc\\x86_64-w64-mingw32\\12.2.0\\include\\mm_malloc.h" 3 4
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\errno.h" 1 3 4
# 30 "c:\\mingw64\\lib\\gcc\\x86_64-w64-mingw32\\12.2.0\\include\\mm_malloc.h" 2 3 4


static __inline__ void *
_mm_malloc (size_t __size, size_t __align)
{
  void * __malloc_ptr;
  void * __aligned_ptr;


  if (__align & (__align - 1))
    {

      (*_errno()) = 22;

      return ((void *) 0);
    }

  if (__size == 0)
    return ((void *) 0);





    if (__align < 2 * sizeof (void *))
      __align = 2 * sizeof (void *);

  __malloc_ptr = malloc (__size + __align);
  if (!__malloc_ptr)
    return ((void *) 0);


  __aligned_ptr = (void *) (((size_t) __malloc_ptr + __align)
       & ~((size_t) (__align) - 1));


  ((void **) __aligned_ptr)[-1] = __malloc_ptr;

  return __aligned_ptr;
}

static __inline__ void
_mm_free (void *__aligned_ptr)
{
  if (__aligned_ptr)
    free (((void **) __aligned_ptr)[-1]);
}
# 81 "c:\\mingw64\\x86_64-w64-mingw32\\include\\malloc.h" 2 3




  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _resetstkoflw (void);

  __attribute__ ((__dllimport__)) unsigned long __attribute__((__cdecl__)) _set_malloc_crt_max_wait(unsigned long _NewValue);

  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _expand(void *_Memory,size_t _NewSize);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _msize(void *_Memory);






  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _get_sbh_threshold(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _set_sbh_threshold(size_t _NewValue);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _set_amblksiz(size_t _Value);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _get_amblksiz(size_t *_Value);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapadd(void *_Memory,size_t _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapchk(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapmin(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapset(unsigned int _Fill);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapwalk(_HEAPINFO *_EntryInfo);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _heapused(size_t *_Used,size_t *_Commit);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _get_heap_handle(void);
# 120 "c:\\mingw64\\x86_64-w64-mingw32\\include\\malloc.h" 3
  static __inline void *_MarkAllocaS(void *_Ptr,unsigned int _Marker) {
    if(_Ptr) {
      *((unsigned int*)_Ptr) = _Marker;
      _Ptr = (char*)_Ptr + 16;
    }
    return _Ptr;
  }
# 139 "c:\\mingw64\\x86_64-w64-mingw32\\include\\malloc.h" 3
  static __inline void __attribute__((__cdecl__)) _freea(void *_Memory) {
    unsigned int _Marker;
    if(_Memory) {
      _Memory = (char*)_Memory - 16;
      _Marker = *(unsigned int *)_Memory;
      if(_Marker==0xDDDD) {
 free(_Memory);
      }





    }
  }
# 185 "c:\\mingw64\\x86_64-w64-mingw32\\include\\malloc.h" 3
#pragma pack(pop)
# 767 "c:\\mingw64\\x86_64-w64-mingw32\\include\\stdlib.h" 2 3
# 10 "Entidades/Relatorios/../../tools.h" 2
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\string.h" 1 3
# 45 "c:\\mingw64\\x86_64-w64-mingw32\\include\\string.h" 3
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int __attribute__((__cdecl__)) memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void * __attribute__((__cdecl__)) memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _Size) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memcpy_s (void *_dest,size_t _numberOfElements,const void *_src,size_t _count);
  void * __attribute__((__cdecl__)) mempcpy (void *_Dst, const void *_Src, size_t _Size);
  void * __attribute__((__cdecl__)) memset(void *_Dst,int _Val,size_t _Size);

  void * __attribute__((__cdecl__)) memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size) ;
  int __attribute__((__cdecl__)) memicmp(const void *_Buf1,const void *_Buf2,size_t _Size) ;


  char * __attribute__((__cdecl__)) _strset(char *_Str,int _Val) ;
  char * __attribute__((__cdecl__)) _strset_l(char *_Str,int _Val,_locale_t _Locale) ;
  char * __attribute__((__cdecl__)) strcpy(char * __restrict__ _Dest,const char * __restrict__ _Source);
  char * __attribute__((__cdecl__)) strcat(char * __restrict__ _Dest,const char * __restrict__ _Source);
  int __attribute__((__cdecl__)) strcmp(const char *_Str1,const char *_Str2);
  size_t __attribute__((__cdecl__)) strlen(const char *_Str);
  size_t __attribute__((__cdecl__)) strnlen(const char *_Str,size_t _MaxCount);
  void *__attribute__((__cdecl__)) memmove(void *_Dst,const void *_Src,size_t _Size) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strdup(const char *_Src);
  char *__attribute__((__cdecl__)) strchr(const char *_Str,int _Val);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcmpi(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int __attribute__((__cdecl__)) strcoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t __attribute__((__cdecl__)) strcspn(const char *_Str,const char *_Control);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strerror(const char *_ErrMsg) ;
  char *__attribute__((__cdecl__)) strerror(int) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strlwr(char *_String) ;
  char *strlwr_l(char *_String,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strncat(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset(char *_Str,int _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strnset_l(char *str,int c,size_t count,_locale_t _Locale) ;
  char *__attribute__((__cdecl__)) strpbrk(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strrchr(const char *_Str,int _Ch);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strrev(char *_Str);
  size_t __attribute__((__cdecl__)) strspn(const char *_Str,const char *_Control);
  char *__attribute__((__cdecl__)) strstr(const char *_Str,const char *_SubStr);
  char *__attribute__((__cdecl__)) strtok(char * __restrict__ _Str,const char * __restrict__ _Delim) ;
       

  char *strtok_r(char * __restrict__ _Str, const char * __restrict__ _Delim, char ** __restrict__ __last);
       
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strupr(char *_String) ;
  __attribute__ ((__dllimport__)) char *_strupr_l(char *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) strxfrm(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _strxfrm_l(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);


  char *__attribute__((__cdecl__)) strdup(const char *_Src) ;
  int __attribute__((__cdecl__)) strcmpi(const char *_Str1,const char *_Str2) ;
  int __attribute__((__cdecl__)) stricmp(const char *_Str1,const char *_Str2) ;
  char *__attribute__((__cdecl__)) strlwr(char *_Str) ;
  int __attribute__((__cdecl__)) strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount) ;
  int __attribute__((__cdecl__)) strncasecmp (const char *, const char *, size_t);
  int __attribute__((__cdecl__)) strcasecmp (const char *, const char *);







  char *__attribute__((__cdecl__)) strnset(char *_Str,int _Val,size_t _MaxCount) ;
  char *__attribute__((__cdecl__)) strrev(char *_Str) ;
  char *__attribute__((__cdecl__)) strset(char *_Str,int _Val) ;
  char *__attribute__((__cdecl__)) strupr(char *_Str) ;





  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsdup(const wchar_t *_Str);
  wchar_t *__attribute__((__cdecl__)) wcscat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  wchar_t *__attribute__((__cdecl__)) wcschr(const wchar_t *_Str,wchar_t _Ch);
  int __attribute__((__cdecl__)) wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t *__attribute__((__cdecl__)) wcscpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  size_t __attribute__((__cdecl__)) wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t __attribute__((__cdecl__)) wcslen(const wchar_t *_Str);
  size_t __attribute__((__cdecl__)) wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  int __attribute__((__cdecl__)) wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  wchar_t *__attribute__((__cdecl__)) _wcsncpy_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count,_locale_t _Locale) ;
  wchar_t *__attribute__((__cdecl__)) wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t __attribute__((__cdecl__)) wcsspn(const wchar_t *_Str,const wchar_t *_Control);
  wchar_t *__attribute__((__cdecl__)) wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);
  wchar_t *__attribute__((__cdecl__)) wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcserror(int _ErrNum) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) __wcserror(const wchar_t *_Str) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsrev(wchar_t *_Str);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsset(wchar_t *_Str,wchar_t _Val) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcslwr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcsupr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) wcsxfrm(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcsxfrm_l(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);


  wchar_t *__attribute__((__cdecl__)) wcsdup(const wchar_t *_Str) ;

  int __attribute__((__cdecl__)) wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2) ;
  int __attribute__((__cdecl__)) wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  wchar_t *__attribute__((__cdecl__)) wcsrev(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsset(wchar_t *_Str,wchar_t _Val) ;
  wchar_t *__attribute__((__cdecl__)) wcslwr(wchar_t *_Str) ;
  wchar_t *__attribute__((__cdecl__)) wcsupr(wchar_t *_Str) ;
  int __attribute__((__cdecl__)) wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2) ;







# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\string_s.h" 1 3
# 9 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\string_s.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\string.h" 1 3
# 10 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\string_s.h" 2 3
# 24 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\string_s.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strset_s(char *_Dst,size_t _DstSize,int _Value);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strerror_s(char *_Buf,size_t _SizeInBytes,const char *_ErrMsg);
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) strerror_s(char *_Buf,size_t _SizeInBytes,int _ErrNum);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s(char *_Str,size_t _Size);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strlwr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strnset_s(char *_Str,size_t _Size,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s(char *_Str,size_t _Size);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strupr_s_l(char *_Str,size_t _Size,_locale_t _Locale);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncat_s(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncat_s_l(char *_Dst,size_t _DstSizeInChars,const char *_Src,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcpy_s(char *_Dst, rsize_t _SizeInBytes, const char *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strncpy_s(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _strncpy_s_l(char *_Dst, size_t _DstSizeInChars, const char *_Src, size_t _MaxCount, _locale_t _Locale);
  ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) strtok_s(char *_Str,const char *_Delim,char **_Context);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strtok_s_l(char *_Str,const char *_Delim,char **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) strcat_s(char *_Dst, rsize_t _SizeInBytes, const char * _Src);
 

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) strnlen_s(const char * _src, size_t _count) {
    return _src ? strnlen(_src, _count) : 0;
  }

  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) memmove_s(void *_dest,size_t _numberOfElements,const void *_src,size_t _count);


  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) wcstok_s(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcserror_s(wchar_t *_Buf,size_t _SizeInWords,int _ErrNum);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) __wcserror_s(wchar_t *_Buffer,size_t _SizeInWords,const wchar_t *_ErrMsg);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s(wchar_t *_Dst,size_t _DstSizeInWords,wchar_t _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s(wchar_t *_Str,size_t _SizeInWords,wchar_t _Val);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s(wchar_t *_Str,size_t _SizeInWords);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcslwr_s_l(wchar_t *_Str,size_t _SizeInWords,_locale_t _Locale);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s(wchar_t *_Str,size_t _Size);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsupr_s_l(wchar_t *_Str,size_t _Size,_locale_t _Locale);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscpy_s(wchar_t *_Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcscat_s(wchar_t * _Dst, rsize_t _SizeInWords, const wchar_t *_Src);
 

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncat_s(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncat_s_l(wchar_t *_Dst,size_t _DstSizeInChars,const wchar_t *_Src,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcsncpy_s(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount);
  ;
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsncpy_s_l(wchar_t *_Dst, size_t _DstSizeInChars, const wchar_t *_Src, size_t _MaxCount, _locale_t _Locale);
  ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wcstok_s_l(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsset_s_l(wchar_t *_Str,size_t _SizeInChars,unsigned int _Val,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcsnset_s_l(wchar_t *_Str,size_t _SizeInChars,unsigned int _Val, size_t _Count,_locale_t _Locale);

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) size_t __attribute__((__cdecl__)) wcsnlen_s(const wchar_t * _src, size_t _count) {
    return _src ? wcsnlen(_src, _count) : 0;
  }
# 191 "c:\\mingw64\\x86_64-w64-mingw32\\include\\string.h" 2 3
# 11 "Entidades/Relatorios/../../tools.h" 2
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\locale.h" 1 3
# 15 "c:\\mingw64\\x86_64-w64-mingw32\\include\\locale.h" 3
#pragma pack(push,_CRT_PACKING)
# 45 "c:\\mingw64\\x86_64-w64-mingw32\\include\\locale.h" 3
  struct lconv {
    char *decimal_point;
    char *thousands_sep;
    char *grouping;
    char *int_curr_symbol;
    char *currency_symbol;
    char *mon_decimal_point;
    char *mon_thousands_sep;
    char *mon_grouping;
    char *positive_sign;
    char *negative_sign;
    char int_frac_digits;
    char frac_digits;
    char p_cs_precedes;
    char p_sep_by_space;
    char n_cs_precedes;
    char n_sep_by_space;
    char p_sign_posn;
    char n_sign_posn;

    wchar_t* _W_decimal_point;
    wchar_t* _W_thousands_sep;
    wchar_t* _W_int_curr_symbol;
    wchar_t* _W_currency_symbol;
    wchar_t* _W_mon_decimal_point;
    wchar_t* _W_mon_thousands_sep;
    wchar_t* _W_positive_sign;
    wchar_t* _W_negative_sign;

  };
# 89 "c:\\mingw64\\x86_64-w64-mingw32\\include\\locale.h" 3
  int __attribute__((__cdecl__)) _configthreadlocale(int _Flag);
  char *__attribute__((__cdecl__)) setlocale(int _Category,const char *_Locale);
  __attribute__ ((__dllimport__)) struct lconv *__attribute__((__cdecl__)) localeconv(void);
  __attribute__ ((__dllimport__)) _locale_t __attribute__((__cdecl__)) _get_current_locale(void);
  __attribute__ ((__dllimport__)) _locale_t __attribute__((__cdecl__)) _create_locale(int _Category,const char *_Locale);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _free_locale(_locale_t _Locale);
  _locale_t __attribute__((__cdecl__)) __get_current_locale(void);
  _locale_t __attribute__((__cdecl__)) __create_locale(int _Category,const char *_Locale);
  void __attribute__((__cdecl__)) __free_locale(_locale_t _Locale);

  __attribute__ ((__dllimport__)) unsigned int __attribute__((__cdecl__)) ___lc_codepage_func(void);



  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wsetlocale(int _Category,const wchar_t *_Locale);
# 116 "c:\\mingw64\\x86_64-w64-mingw32\\include\\locale.h" 3
#pragma pack(pop)
# 12 "Entidades/Relatorios/../../tools.h" 2





    
# 17 "Entidades/Relatorios/../../tools.h"
   typedef char* string;
    typedef void* var;
# 60 "Entidades/Relatorios/../../tools.h"
    void Locale() { setlocale(
# 60 "Entidades/Relatorios/../../tools.h" 3
                             0
# 60 "Entidades/Relatorios/../../tools.h"
                                   , ".UTF8"); }




    void clearBuffer() { while(getchar() != '\n') {} }




    void pause() { printf("\nPressione <enter> para continuar... "); getchar(); }




    void cleanScreen() { printf("\e[1;1H\e[2J"); }




    string String(const size_t size) { return (string) calloc(size, sizeof(char)); }




    void swap(int *n1, int *n2) {
        int temp;
        temp = *n1;
        *n1 = *n2;
        *n2 = temp;
    }




    int validateTime(const int hour, const int min, const int sec) {
        if (hour < 0 || hour > 24)
            return 0;

        if (min < 0 || min > 59)
            return 0;

        if (sec < 0 || sec > 59)
            return 0;

        return 1;
    }




    int Int() {
        int num = 0;
        int sign = 1;
        int c;

        while ((c = getchar()) != '\n') {
            if (c == '-')
                sign = -1;

            else if (c >= '0' && c <= '9')
                num = num * 10 + (c - '0');
        }

        return num * sign;
    }




    double Double() {
        char input[100];

        fgets(input, 100, 
# 133 "Entidades/Relatorios/../../tools.h" 3
                         (__acrt_iob_func(0))
# 133 "Entidades/Relatorios/../../tools.h"
                              );

        return strtod(input, 
# 135 "Entidades/Relatorios/../../tools.h" 3
                            ((void *)0)
# 135 "Entidades/Relatorios/../../tools.h"
                                );
    }




    void PrintCPF(string cpf) {
        size_t i = 0;

        while (cpf[i] != '\0') {
            printf("%c", cpf[i]);

            switch(i++) {
                case 2:
                case 5: printf("."); break;
                case 8: printf("/"); break;
            }
        }
    }




    void PrintPlaca(string placa) {
        size_t i = 0;

        while (placa[i] != '\0') {
            printf("%c", placa[i]);

            if (i == 2)
                printf("-");

            i++;
        }
    }




    void fprint_err(string Filename) {
        string error = String(50);
        strcat(error, "Erro ao abrir ");
        strcat(error, Filename);
        perror(error);
        free(error);
    }
# 9 "Entidades/Relatorios/Relatorios.h" 2
# 1 "Entidades/Relatorios/../Locacoes/Locacoes.c" 1
# 1 "Entidades/Relatorios/../Locacoes/Locacoes.h" 1







# 1 "Entidades/Relatorios/../Locacoes/../Data.c" 1
# 1 "Entidades/Relatorios/../Locacoes/../Data.h" 1







# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\time.h" 1 3
# 25 "c:\\mingw64\\x86_64-w64-mingw32\\include\\time.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sys\\timeb.h" 1 3
# 15 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sys\\timeb.h" 3
#pragma pack(push,_CRT_PACKING)
# 53 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sys\\timeb.h" 3
  
# 53 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sys\\timeb.h" 3
 struct __timeb32 {
    __time32_t time;
    unsigned short millitm;
    short timezone;
    short dstflag;
  };


  struct timeb {
    time_t time;
    unsigned short millitm;
    short timezone;
    short dstflag;
  };


  struct __timeb64 {
    __time64_t time;
    unsigned short millitm;
    short timezone;
    short dstflag;
  };



  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _ftime64(struct __timeb64 *_Time);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _ftime32(struct __timeb32 *_Time);
# 89 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sys\\timeb.h" 3
struct _timespec32 {
  __time32_t tv_sec;
  long tv_nsec;
};

struct _timespec64 {
  __time64_t tv_sec;
  long tv_nsec;
};



struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};



  void __attribute__((__cdecl__)) ftime (struct timeb *);
# 133 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sys\\timeb.h" 3
#pragma pack(pop)

# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\sys\\timeb_s.h" 1 3
# 10 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\sys\\timeb_s.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sys\\timeb.h" 1 3
# 11 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sec_api\\sys\\timeb_s.h" 2 3





  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ftime32_s(struct __timeb32 *_Time);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ftime64_s(struct __timeb64 *_Time);
# 136 "c:\\mingw64\\x86_64-w64-mingw32\\include\\sys\\timeb.h" 2 3
# 26 "c:\\mingw64\\x86_64-w64-mingw32\\include\\time.h" 2 3

#pragma pack(push,_CRT_PACKING)
# 63 "c:\\mingw64\\x86_64-w64-mingw32\\include\\time.h" 3
  typedef long clock_t;
# 100 "c:\\mingw64\\x86_64-w64-mingw32\\include\\time.h" 3
  struct tm {
    int tm_sec;
    int tm_min;
    int tm_hour;
    int tm_mday;
    int tm_mon;
    int tm_year;
    int tm_wday;
    int tm_yday;
    int tm_isdst;
  };
# 120 "c:\\mingw64\\x86_64-w64-mingw32\\include\\time.h" 3
  __attribute__ ((__dllimport__)) int *__attribute__((__cdecl__)) __daylight(void);
  __attribute__ ((__dllimport__)) long *__attribute__((__cdecl__)) __dstbias(void);
  __attribute__ ((__dllimport__)) long *__attribute__((__cdecl__)) __timezone(void);
  __attribute__ ((__dllimport__)) char **__attribute__((__cdecl__)) __tzname(void);
# 135 "c:\\mingw64\\x86_64-w64-mingw32\\include\\time.h" 3
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _get_daylight(int *_Daylight);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _get_dstbias(long *_Daylight_savings_bias);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _get_timezone(long *_Timezone);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _get_tzname(size_t *_ReturnValue,char *_Buffer,size_t _SizeInBytes,int _Index);
  char *__attribute__((__cdecl__)) asctime(const struct tm *_Tm) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) asctime_s (char *_Buf,size_t _SizeInWords,const struct tm *_Tm);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ctime32(const __time32_t *_Time) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _ctime32_s (char *_Buf,size_t _SizeInBytes,const __time32_t *_Time);
  clock_t __attribute__((__cdecl__)) clock(void);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _difftime32(__time32_t _Time1,__time32_t _Time2);
  __attribute__ ((__dllimport__)) struct tm *__attribute__((__cdecl__)) _gmtime32(const __time32_t *_Time) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _gmtime32_s (struct tm *_Tm,const __time32_t *_Time);
  __attribute__ ((__dllimport__)) struct tm *__attribute__((__cdecl__)) _localtime32(const __time32_t *_Time) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _localtime32_s (struct tm *_Tm,const __time32_t *_Time);
  size_t __attribute__((__cdecl__)) strftime(char * __restrict__ _Buf,size_t _SizeInBytes,const char * __restrict__ _Format,const struct tm * __restrict__ _Tm);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _strftime_l(char * __restrict__ _Buf,size_t _Max_size,const char * __restrict__ _Format,const struct tm * __restrict__ _Tm,_locale_t _Locale);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strdate(char *_Buffer) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _strdate_s (char *_Buf,size_t _SizeInBytes);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _strtime(char *_Buffer) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _strtime_s (char *_Buf ,size_t _SizeInBytes);
  __attribute__ ((__dllimport__)) __time32_t __attribute__((__cdecl__)) _time32(__time32_t *_Time);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _timespec32_get(struct _timespec32 *_Ts, int _Base);

  __attribute__ ((__dllimport__)) __time32_t __attribute__((__cdecl__)) _mktime32(struct tm *_Tm);
  __attribute__ ((__dllimport__)) __time32_t __attribute__((__cdecl__)) _mkgmtime32(struct tm *_Tm);


  void __attribute__((__cdecl__)) tzset(void) ;





  void __attribute__((__cdecl__)) _tzset(void);


  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _difftime64(__time64_t _Time1,__time64_t _Time2);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ctime64(const __time64_t *_Time) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _ctime64_s (char *_Buf,size_t _SizeInBytes,const __time64_t *_Time);
  __attribute__ ((__dllimport__)) struct tm *__attribute__((__cdecl__)) _gmtime64(const __time64_t *_Time) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _gmtime64_s (struct tm *_Tm,const __time64_t *_Time);
  __attribute__ ((__dllimport__)) struct tm *__attribute__((__cdecl__)) _localtime64(const __time64_t *_Time) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _localtime64_s (struct tm *_Tm,const __time64_t *_Time);
  __attribute__ ((__dllimport__)) __time64_t __attribute__((__cdecl__)) _mktime64(struct tm *_Tm);
  __attribute__ ((__dllimport__)) __time64_t __attribute__((__cdecl__)) _mkgmtime64(struct tm *_Tm);
  __attribute__ ((__dllimport__)) __time64_t __attribute__((__cdecl__)) _time64(__time64_t *_Time);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _timespec64_get(struct _timespec64 *_Ts, int _Base);

  unsigned __attribute__((__cdecl__)) _getsystime(struct tm *_Tm);
  unsigned __attribute__((__cdecl__)) _setsystime(struct tm *_Tm,unsigned _MilliSec);


  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wasctime(const struct tm *_Tm);
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wasctime_s (wchar_t *_Buf,size_t _SizeInWords,const struct tm *_Tm);
  wchar_t *__attribute__((__cdecl__)) _wctime32(const __time32_t *_Time) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wctime32_s (wchar_t *_Buf,size_t _SizeInWords,const __time32_t *_Time);
  size_t __attribute__((__cdecl__)) wcsftime(wchar_t * __restrict__ _Buf,size_t _SizeInWords,const wchar_t * __restrict__ _Format,const struct tm * __restrict__ _Tm);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcsftime_l(wchar_t * __restrict__ _Buf,size_t _SizeInWords,const wchar_t * __restrict__ _Format,const struct tm * __restrict__ _Tm,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wstrdate(wchar_t *_Buffer) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wstrdate_s (wchar_t *_Buf,size_t _SizeInWords);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wstrtime(wchar_t *_Buffer) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wstrtime_s (wchar_t *_Buf,size_t _SizeInWords);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wctime64(const __time64_t *_Time) ;
  __attribute__((dllimport)) errno_t __attribute__((__cdecl__)) _wctime64_s (wchar_t *_Buf,size_t _SizeInWords,const __time64_t *_Time);



  wchar_t *__attribute__((__cdecl__)) _wctime(const time_t *) ;
# 216 "c:\\mingw64\\x86_64-w64-mingw32\\include\\time.h" 3
  errno_t __attribute__((__cdecl__)) _wctime_s(wchar_t *, size_t, const time_t *);
# 246 "c:\\mingw64\\x86_64-w64-mingw32\\include\\time.h" 3
static __inline time_t __attribute__((__cdecl__)) time(time_t *_Time) { return _time64(_Time); }

static __inline int __attribute__((__cdecl__)) timespec_get(struct timespec* _Ts, int _Base) { return _timespec64_get((struct _timespec64*)_Ts, _Base); }

static __inline double __attribute__((__cdecl__)) difftime(time_t _Time1,time_t _Time2) { return _difftime64(_Time1,_Time2); }
static __inline struct tm *__attribute__((__cdecl__)) localtime(const time_t *_Time) { return _localtime64(_Time); }
static __inline errno_t __attribute__((__cdecl__)) localtime_s(struct tm *_Tm,const time_t *_Time) { return _localtime64_s(_Tm,_Time); }
static __inline struct tm *__attribute__((__cdecl__)) gmtime(const time_t *_Time) { return _gmtime64(_Time); }
static __inline errno_t __attribute__((__cdecl__)) gmtime_s(struct tm *_Tm, const time_t *_Time) { return _gmtime64_s(_Tm, _Time); }
static __inline char *__attribute__((__cdecl__)) ctime(const time_t *_Time) { return _ctime64(_Time); }
static __inline errno_t __attribute__((__cdecl__)) ctime_s(char *_Buf,size_t _SizeInBytes,const time_t *_Time) { return _ctime64_s(_Buf,_SizeInBytes,_Time); }
static __inline time_t __attribute__((__cdecl__)) mktime(struct tm *_Tm) { return _mktime64(_Tm); }
static __inline time_t __attribute__((__cdecl__)) _mkgmtime(struct tm *_Tm) { return _mkgmtime64(_Tm); }
# 275 "c:\\mingw64\\x86_64-w64-mingw32\\include\\time.h" 3
  __attribute__ ((__dllimport__)) extern int daylight __attribute__ ((__deprecated__("Only provided for source compatibility; this variable might " "not always be accurate when linking to UCRT.")));
  __attribute__ ((__dllimport__)) extern long timezone __attribute__ ((__deprecated__("Only provided for source compatibility; this variable might " "not always be accurate when linking to UCRT.")));
  __attribute__ ((__dllimport__)) extern char *tzname[2] __attribute__ ((__deprecated__("Only provided for source compatibility; this variable might " "not always be accurate when linking to UCRT.")));
  void __attribute__((__cdecl__)) tzset(void) ;


# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_timeval.h" 1 3
# 10 "c:\\mingw64\\x86_64-w64-mingw32\\include\\_timeval.h" 3
struct timeval
{
 long tv_sec;
 long tv_usec;
};
# 282 "c:\\mingw64\\x86_64-w64-mingw32\\include\\time.h" 2 3



struct timezone {
  int tz_minuteswest;
  int tz_dsttime;
};

  extern int __attribute__((__cdecl__)) mingw_gettimeofday (struct timeval *p, struct timezone *z);


#pragma pack(pop)
# 324 "c:\\mingw64\\x86_64-w64-mingw32\\include\\time.h" 3
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\pthread_time.h" 1 3
# 49 "c:\\mingw64\\x86_64-w64-mingw32\\include\\pthread_time.h" 3
typedef int clockid_t;
# 82 "c:\\mingw64\\x86_64-w64-mingw32\\include\\pthread_time.h" 3
       





int __attribute__((__cdecl__)) nanosleep(const struct timespec *request, struct timespec *remain);

int __attribute__((__cdecl__)) clock_nanosleep(clockid_t clock_id, int flags, const struct timespec *request, struct timespec *remain);
int __attribute__((__cdecl__)) clock_getres(clockid_t clock_id, struct timespec *res);
int __attribute__((__cdecl__)) clock_gettime(clockid_t clock_id, struct timespec *tp);
int __attribute__((__cdecl__)) clock_settime(clockid_t clock_id, const struct timespec *tp);

       
# 325 "c:\\mingw64\\x86_64-w64-mingw32\\include\\time.h" 2 3
# 9 "Entidades/Relatorios/../Locacoes/../Data.h" 2
# 1 "Entidades/Relatorios/../Locacoes/../../tools.h" 1
# 10 "Entidades/Relatorios/../Locacoes/../Data.h" 2
# 24 "Entidades/Relatorios/../Locacoes/../Data.h"
    
# 24 "Entidades/Relatorios/../Locacoes/../Data.h"
   typedef struct tm DateTime;





        DateTime* CriaDateTime(string, string, string);

        int ValidaDia (int);
        int ValidaMes (int, int);
        int ValidaAno (int, int, int);
        int Bissexto (int);
        int DiferencaEmDias (DateTime*, DateTime*);
        int DataRangeInRange (DateTime*, DateTime*, DateTime*, DateTime*);
        void ExibeData (const DateTime*);
        string FormataData (const DateTime*);
        DateTime* NovaData();
        DateTime* CriaDataValida();
# 2 "Entidades/Relatorios/../Locacoes/../Data.c" 2
# 10 "Entidades/Relatorios/../Locacoes/../Data.c"
    DateTime* CriaDateTime(string dia,
                           string mes,
                           string ano) {

        DateTime* aux = (DateTime *) malloc(sizeof(DateTime));

        if (!aux)
            return 
# 17 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                  ((void *)0)
# 17 "Entidades/Relatorios/../Locacoes/../Data.c"
                      ;

        int _ano = strtol(ano, 
# 19 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                              ((void *)0)
# 19 "Entidades/Relatorios/../Locacoes/../Data.c"
                                  , 10)-1900;
        int _mes = strtol(mes, 
# 20 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                              ((void *)0)
# 20 "Entidades/Relatorios/../Locacoes/../Data.c"
                                  , 10)-1;

        aux->tm_sec = 0;
        aux->tm_min = 0;
        aux->tm_hour = 0;
        aux->tm_wday = 0;
        aux->tm_mday = strtol(dia, 
# 26 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                                  ((void *)0)
# 26 "Entidades/Relatorios/../Locacoes/../Data.c"
                                      , 10);
        aux->tm_mon = _mes;
        aux->tm_year = _ano;
        aux->tm_yday = 0;

        if (Bissexto(_ano))
            aux->tm_isdst = 1;
        else
            aux->tm_isdst = 0;

        return aux;
    }
# 46 "Entidades/Relatorios/../Locacoes/../Data.c"
    void ExibeData(const DateTime* data) {
        char novaData[100];

        strftime(novaData, 100, "%a %d %b %Y", data);
        novaData[strcspn(novaData, "\n")] = 0;

        printf("%s", novaData);
    }




    string FormataData(const DateTime* data) {
        string novaData = (string) malloc(100);

        strftime(novaData, 100, "%a%d%b%Y", data);
        novaData[strcspn(novaData, "\n")] = 0;

        return novaData;
    }




    DateTime* NovaData() {
        char dia[5];
        char mes[5];
        char ano[10];

        printf("\nDia: ");
        fgets(dia, 5, 
# 76 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                           (__acrt_iob_func(0))
# 76 "Entidades/Relatorios/../Locacoes/../Data.c"
                                );
        dia[strcspn(dia, "\n")] = 0;

        if (!ValidaDia(strtol(dia, 
# 79 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                                  ((void *)0)
# 79 "Entidades/Relatorios/../Locacoes/../Data.c"
                                      , 10)))
            return 
# 80 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                  ((void *)0)
# 80 "Entidades/Relatorios/../Locacoes/../Data.c"
                      ;

        printf("Mes: ");
        fgets(mes, 5, 
# 83 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                           (__acrt_iob_func(0))
# 83 "Entidades/Relatorios/../Locacoes/../Data.c"
                                );
        mes[strcspn(mes, "\n")] = 0;

        if (!ValidaMes(strtol(dia, 
# 86 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                                  ((void *)0)
# 86 "Entidades/Relatorios/../Locacoes/../Data.c"
                                      , 10), strtol(mes, 
# 86 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                                                         ((void *)0)
# 86 "Entidades/Relatorios/../Locacoes/../Data.c"
                                                             , 10)))
            return 
# 87 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                  ((void *)0)
# 87 "Entidades/Relatorios/../Locacoes/../Data.c"
                      ;

        printf("Ano: ");
        fgets(ano, 10, 
# 90 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                           (__acrt_iob_func(0))
# 90 "Entidades/Relatorios/../Locacoes/../Data.c"
                                );
        ano[strcspn(ano, "\n")] = 0;

        if (!ValidaAno(strtol(dia, 
# 93 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                                  ((void *)0)
# 93 "Entidades/Relatorios/../Locacoes/../Data.c"
                                      , 10), strtol(mes, 
# 93 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                                                         ((void *)0)
# 93 "Entidades/Relatorios/../Locacoes/../Data.c"
                                                             , 10), strtol(ano, 
# 93 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                                                                                ((void *)0)
# 93 "Entidades/Relatorios/../Locacoes/../Data.c"
                                                                                    , 10)))
            return 
# 94 "Entidades/Relatorios/../Locacoes/../Data.c" 3
                  ((void *)0)
# 94 "Entidades/Relatorios/../Locacoes/../Data.c"
                      ;

        return CriaDateTime(dia, mes, ano);
    }




    int ValidaDia(const int dia) {
        if (dia <= 0 || dia > 31)
            return 0;

        return 1;
    }




    int ValidaMes(const int dia, const int mes) {
        if (mes <= 0 || mes > 12)
            return 0;

        if (mes == 2 && dia > 29)
            return 0;

        if ((mes == 4 || mes == 6 || mes == 9 || mes == 11) && dia == 31)
            return 0;

        return 1;
    }




    int ValidaAno(const int dia, const int mes, const int ano) {
        if (ano < 1900 || ano > 3000)
            return 0;

        if (dia == 29 && mes == 2 && !Bissexto(ano))
            return 0;

        return 1;
    }




    int Bissexto(const int ano) {
        if (ano%400 == 0 && ano%100 == 0)
            return 1;
        if (ano%4 == 0 && ano%100 != 0)
            return 1;

        return 0;
    }




    DateTime* CriaDataValida() {
        DateTime* data;

        do {
            printf("\nDigite a Data: ");
            data = NovaData();

            if (!data)
                printf("\nData Invalida!!!\n");

        } while(!data);

        return data;
    }




    int DiferencaEmDias(DateTime* dataFim, DateTime* dataIni) {
        double segundos = difftime(mktime(dataFim), mktime(dataIni));
        return (int) (segundos/86400);
    }






    int DataRangeInRange(DateTime* inputDataFim,
                         DateTime* inputDataIni,
                         DateTime* rangeDataFim,
                         DateTime* rangeDataIni) {

        time_t inputIni = mktime(inputDataIni);
        time_t inputFim = mktime(inputDataFim);
        time_t rangeIni = mktime(rangeDataIni);
        time_t rangeFim = mktime(rangeDataFim);

        if (inputIni >= rangeIni && inputFim <= rangeFim)
            return 1;

        if (inputIni < rangeIni && inputFim < rangeIni)
            return -1;

        if (inputIni > rangeFim && inputFim > rangeFim)
            return -1;

        return 0;
    }
# 9 "Entidades/Relatorios/../Locacoes/Locacoes.h" 2
# 1 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 1
# 1 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.h" 1







# 1 "Entidades/Relatorios/../Locacoes/../Clientes/../ValidaInput.h" 1



# 1 "Entidades/Relatorios/../Locacoes/../Clientes/../../tools.h" 1
# 5 "Entidades/Relatorios/../Locacoes/../Clientes/../ValidaInput.h" 2
# 1 "c:\\mingw64\\x86_64-w64-mingw32\\include\\ctype.h" 1 3
# 29 "c:\\mingw64\\x86_64-w64-mingw32\\include\\ctype.h" 3
  
# 29 "c:\\mingw64\\x86_64-w64-mingw32\\include\\ctype.h" 3
 __attribute__ ((__dllimport__)) unsigned short* __pctype_func(void);
# 59 "c:\\mingw64\\x86_64-w64-mingw32\\include\\ctype.h" 3
  extern unsigned short ** __imp__wctype;
# 71 "c:\\mingw64\\x86_64-w64-mingw32\\include\\ctype.h" 3
  extern unsigned short ** __imp__pwctype;
# 80 "c:\\mingw64\\x86_64-w64-mingw32\\include\\ctype.h" 3
  extern const unsigned char __newclmap[];
  extern const unsigned char __newcumap[];
  extern pthreadlocinfo __ptlocinfo;
  extern pthreadmbcinfo __ptmbcinfo;
  extern int __globallocalestatus;
  extern int __locale_changed;
  extern struct threadlocaleinfostruct __initiallocinfo;
  extern _locale_tstruct __initiallocalestructinfo;
  pthreadlocinfo __attribute__((__cdecl__)) __updatetlocinfo(void);
  pthreadmbcinfo __attribute__((__cdecl__)) __updatetmbcinfo(void);
# 108 "c:\\mingw64\\x86_64-w64-mingw32\\include\\ctype.h" 3
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isctype(int _C,int _Type);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isctype_l(int _C,int _Type,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) isalpha(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isalpha_l(int _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) isupper(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isupper_l(int _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) islower(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _islower_l(int _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) isdigit(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isdigit_l(int _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) isxdigit(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isxdigit_l(int _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) isspace(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isspace_l(int _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) ispunct(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _ispunct_l(int _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) isalnum(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isalnum_l(int _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) isprint(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isprint_l(int _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) isgraph(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isgraph_l(int _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) iscntrl(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iscntrl_l(int _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) toupper(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) tolower(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _tolower(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _tolower_l(int _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _toupper(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _toupper_l(int _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) __isascii(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) __toascii(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) __iscsymf(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) __iscsym(int _C);


int __attribute__((__cdecl__)) isblank(int _C);






  int __attribute__((__cdecl__)) iswalpha(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswalpha_l(wint_t _C,_locale_t _Locale);
  int __attribute__((__cdecl__)) iswupper(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswupper_l(wint_t _C,_locale_t _Locale);
  int __attribute__((__cdecl__)) iswlower(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswlower_l(wint_t _C,_locale_t _Locale);
  int __attribute__((__cdecl__)) iswdigit(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswdigit_l(wint_t _C,_locale_t _Locale);
  int __attribute__((__cdecl__)) iswxdigit(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswxdigit_l(wint_t _C,_locale_t _Locale);
  int __attribute__((__cdecl__)) iswspace(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswspace_l(wint_t _C,_locale_t _Locale);
  int __attribute__((__cdecl__)) iswpunct(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswpunct_l(wint_t _C,_locale_t _Locale);
  int __attribute__((__cdecl__)) iswalnum(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswalnum_l(wint_t _C,_locale_t _Locale);
  int __attribute__((__cdecl__)) iswprint(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswprint_l(wint_t _C,_locale_t _Locale);
  int __attribute__((__cdecl__)) iswgraph(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswgraph_l(wint_t _C,_locale_t _Locale);
  int __attribute__((__cdecl__)) iswcntrl(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswcntrl_l(wint_t _C,_locale_t _Locale);
  int __attribute__((__cdecl__)) iswascii(wint_t _C);

  int __attribute__((__cdecl__)) isleadbyte(int _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _isleadbyte_l(int _C,_locale_t _Locale);

  wint_t __attribute__((__cdecl__)) towupper(wint_t _C);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _towupper_l(wint_t _C,_locale_t _Locale);
  wint_t __attribute__((__cdecl__)) towlower(wint_t _C);
  __attribute__ ((__dllimport__)) wint_t __attribute__((__cdecl__)) _towlower_l(wint_t _C,_locale_t _Locale);
  int __attribute__((__cdecl__)) iswctype(wint_t _C,wctype_t _Type);

  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswctype_l(wint_t _C,wctype_t _Type,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) __iswcsymf(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswcsymf_l(wint_t _C,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) __iswcsym(wint_t _C);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _iswcsym_l(wint_t _C,_locale_t _Locale);


  int __attribute__((__cdecl__)) is_wctype(wint_t _C,wctype_t _Type);



int __attribute__((__cdecl__)) iswblank(wint_t _C);
# 6 "Entidades/Relatorios/../Locacoes/../Clientes/../ValidaInput.h" 2






    
# 12 "Entidades/Relatorios/../Locacoes/../Clientes/../ValidaInput.h"
   int ValidaCPF(string cpf) {
        size_t length = strlen(cpf);

        if (length < 11) {
            printf("\nCPF deve conter 11 caracteres!!!\n");
            return 1;
        }

        for (size_t i = 0; i < length; i++) {
            if (!isdigit(cpf[i])) {
                printf("\nDigite apenas números!!!\n");
                return 1;
            }
        }

        return 0;
    }




    int ValidaNome(string nome) {
        size_t length = strlen(nome);

        if (length < 3) {
            printf("\nNome deve ser maior do que 3 caracteres!!!\n");
            return 1;
        }

        for (size_t i = 0; i < length; i++) {
            if (isdigit(nome[i]) && nome[i] != ' ') {
                printf("\nNome não deve conter números!!!\n");
                return 1;
            }
        }

        return 0;
    }




    int ValidaCategoria(string cat) {
        size_t length = strlen(cat);

        for (size_t i = 0; i < length; i++) {
            if (cat[i] != 'A' && cat[i] != 'B' && cat[i] != 'C' && cat[i] != 'D' && cat[i] != ' ') {
                printf("\nCategoria inválida!!!\n");
                return 1;
            }
        }

        return 0;
    }




    int ValidaPlaca(string placa) {
        size_t length = strlen(placa);

        for (size_t i = 0; i < length; i++) {
            if (!isalnum(placa[i])) {
                printf("\nDigite apenas letras e números!!!\n");
                return 1;
            }
        }

        if (length != 7) {
            printf("\nPlaca deve conter 7 caracteres!!!\n");
            return 1;
        }

        for (size_t i = 0; i < 3; i++) {
            if (!isalpha(placa[i])) {
                printf("\nPlaca Inválida!!!\n");
                return 1;
            }
        }

        for (size_t i = 3; i < length; i++) {
            if (i == 4) continue;
            if (!isdigit(placa[i])) {
                printf("\nPlaca Inválida!!!\n");
                return 1;
            }
        }

        return 0;
    }
# 9 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.h" 2
# 24 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.h"
    typedef struct Cliente {
        char CPF [20];
        char Nome [100];
        char Endereco [500];
        char Categoria [10];
        struct Cliente* proximo;
    } Cliente;


    typedef struct {
        Cliente* cliente;
        size_t tamanho;
    } ListaClientes;







        Cliente* CriaCliente();
        Cliente* CriaClienteArgs(string, string, string, string);
        ListaClientes* CriaListaClientes();
        ListaClientes* CriaListaClientesArgs(Cliente*);



        int SizeString (int);
        int CPFInput (string);
        int NomeInput (string);
        int EnderecoInput (string);
        int CategoriaInput(string);
        void ExibeCliente (Cliente*);
        Cliente* ClientePorCPF (ListaClientes*, string);
        Cliente* ClonaCliente (Cliente*);



        void InsereCliente (ListaClientes*);
        void AtualizaCliente (ListaClientes*);
        void RemoveCliente (ListaClientes*);
        void ExibeClientePorCPF (ListaClientes*);
        void ExibeTodosClientes (ListaClientes*);
        void InsereClienteNaLista(ListaClientes*, Cliente*);
        Cliente* NovoCliente (ListaClientes*);



        void PersistenciaClientes(ListaClientes*);
        ListaClientes* ReadClientes();



        void MenuClientes(ListaClientes*);
# 2 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 2
# 10 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
    Cliente* CriaCliente() {
        Cliente* aux = (Cliente *) malloc(sizeof(Cliente));

        if (!aux)
            return 
# 14 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                  ((void *)0)
# 14 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                      ;

        aux->proximo = 
# 16 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                      ((void *)0)
# 16 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                          ;
        return aux;
    }




    Cliente* CriaClienteArgs(string cpf,
                             string nome,
                             string endereco,
                             string categoria) {

        Cliente* aux = (Cliente *) malloc(sizeof(Cliente));

        if (!aux)
            return 
# 31 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                  ((void *)0)
# 31 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                      ;

        strcpy(aux->CPF, cpf);
        strcpy(aux->Nome, nome);
        strcpy(aux->Endereco, endereco);
        strcpy(aux->Categoria, categoria);

        aux->proximo = 
# 38 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                      ((void *)0)
# 38 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                          ;
        return aux;
    }




    ListaClientes* CriaListaClientes() {
        ListaClientes* aux = (ListaClientes *) malloc(sizeof(ListaClientes));

        if (!aux)
            return 
# 49 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                  ((void *)0)
# 49 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                      ;

        aux->cliente = 
# 51 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                      ((void *)0)
# 51 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                          ;
        aux->tamanho = 0;

        return aux;
    }




    ListaClientes* CriaListaClientesArgs(Cliente* cliente) {
        ListaClientes* aux = (ListaClientes *) malloc(sizeof(ListaClientes));

        if (!aux)
            return 
# 64 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                  ((void *)0)
# 64 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                      ;

        aux->cliente = cliente;
        aux->tamanho = 1;

        return aux;
    }
# 79 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
    int CPFInput(string cpf) {
        do {
            printf("\nDigite o CPF (apenas números): ");
            fgets(cpf, 20, 
# 82 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                               (__acrt_iob_func(0))
# 82 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                                    );
            cpf[strcspn(cpf, "\n")] = 0;

            if (!strcmp(cpf,"0")) return 1;

            if (ValidaCPF(cpf)) continue;

            return 0;

        } while (1);
    }




    int NomeInput(string nome) {
        do {
            printf("\nDigite o Nome: ");
            fgets(nome, 100, 
# 100 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                                 (__acrt_iob_func(0))
# 100 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                                      );
            nome[strcspn(nome, "\n")] = 0;

            if (!strcmp(nome,"0")) return 1;

            if (ValidaNome(nome)) continue;

            return 0;

        } while (1);
    }




    int EnderecoInput(string endereco) {
        printf("\nDigite o Endereço: ");
        fgets(endereco, 500, 
# 117 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                                     (__acrt_iob_func(0))
# 117 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                                          );
        endereco[strcspn(endereco, "\n")] = 0;

        if (!strcmp(endereco,"0")) return 1;

        return 0;
    }




    int CategoriaInput(string categoria) {
        do {
            printf("\nDigite a Categoria da Habilitação (A B C D): ");
            fgets(categoria, 10, 
# 131 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                                           (__acrt_iob_func(0))
# 131 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                                                );
            categoria[strcspn(categoria, "\n")] = 0;

            if (!strcmp(categoria,"0")) return 1;

            for (size_t i = 0; i < strlen(categoria); i++) {
                if (!isupper(categoria[i])) { categoria[i] = (char)toupper(categoria[i]); }
            }

            if (ValidaCategoria(categoria)) continue;

            return 0;

        } while (1);
    }




    void ExibeCliente(Cliente* client) {
        printf("\nNome      : %s", client->Nome);
        printf("\nCPF       : "); PrintCPF(client->CPF);
        printf("\nEndereço  : %s", client->Endereco);
        printf("\nCategoria : %s", client->Categoria);
        printf("\n====================================================\n");
    }




    Cliente* ClientePorCPF(ListaClientes* lista, string cpf) {
        Cliente* aux = lista->cliente;
        while (aux) {
            if (!strcmp(aux->CPF, cpf))
                return aux;
            aux = aux->proximo;
        }
        return 
# 168 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
              ((void *)0)
# 168 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                  ;
    }




    Cliente* ClonaCliente(Cliente* cliente) {
        Cliente* temp = CriaClienteArgs(cliente->CPF, cliente->Nome, cliente->Endereco, cliente->Categoria);
        temp->proximo = 
# 176 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                       ((void *)0)
# 176 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                           ;
        return temp;
    }




    int SizeString(const int opc) {
        if (opc == '1')
            return 100;
        if (opc == '2')
            return 500;
        if (opc == '3')
            return 10;
        return 0;
    }
# 200 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
    void ExibeClientePorCPF(ListaClientes* lista) {
        char cpf[20];

        if (CPFInput(cpf)) return;

        Cliente* aux = ClientePorCPF(lista, cpf);

        if (!aux) {
            printf("\nhttp ERROR: 404 - Cliente NOT Found!!!\n");
            return;
        }

        ExibeCliente(aux);
    }




    void ExibeTodosClientes(ListaClientes* lista) {
        Cliente* cliente = lista->cliente;
        while (cliente) {
            ExibeCliente(cliente);
            printf("\n");
            cliente = cliente->proximo;
        }
    }




    Cliente* NovoCliente(ListaClientes* lista) {
        char cpf [20];
        char nome [100];
        char endereco [500];
        char categoria [10];

        cleanScreen();

        if (CPFInput(cpf)) return 
# 238 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                                 ((void *)0)
# 238 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                                     ;

        if (ClientePorCPF(lista, cpf)) {
            printf("\nO CPF informado já se encontra cadastrado no sistema!!!\n");
            return 
# 242 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                  ((void *)0)
# 242 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                      ;
        }

        if (NomeInput(nome)) return 
# 245 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                                   ((void *)0)
# 245 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                                       ;

        if (EnderecoInput(endereco)) return 
# 247 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                                           ((void *)0)
# 247 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                                               ;

        if (CategoriaInput(categoria)) return 
# 249 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                                             ((void *)0)
# 249 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                                                 ;

        return CriaClienteArgs(cpf, nome, endereco, categoria);
    }




    void InsereClienteNaLista(ListaClientes* lista, Cliente* cliente) {
        if (!cliente)
            return;

        if (!lista->cliente) {
            lista->cliente = cliente;
            lista->tamanho++;
            return;
        }

        Cliente* aux = lista->cliente;

        while (aux->proximo)
            aux = aux->proximo;

        aux->proximo = cliente;
        lista->tamanho++;
    }




    void InsereCliente(ListaClientes* lista) {
        if (!lista)
            return;

        InsereClienteNaLista(lista, NovoCliente(lista));
    }




    void AtualizaCliente(ListaClientes* lista) {
        char cpf[20];

        if (CPFInput(cpf)) return;

        Cliente* aux = ClientePorCPF(lista, cpf);

        if (!aux) {
            printf("\nhttp ERROR: 404 - Cliente NOT Found!!!\n");
            pause();
            return;
        }

        int opc;
        do {
            cleanScreen();
            ExibeCliente(aux);

            printf("\nQual informação deseja alterar?\n");
            printf("\n 1 - Nome");
            printf("\n 2 - Endereço");
            printf("\n 3 - Categoria");
            printf("\n 0 - Retornar");
            printf("\n\nEscolha: ");
            opc = getchar(); clearBuffer();

            if (opc == '0') break;

            if (opc < '1' || opc > '3') {
                printf("\nINVÁLIDO!!!\n");
                pause();
                continue;
            }

            string str = String(SizeString(opc));

            switch (opc) {
                case '1': if (!NomeInput(str)) strcpy(aux->Nome, str); break;
                case '2': if (!EnderecoInput(str)) strcpy(aux->Endereco, str); break;
                case '3': if (!CategoriaInput(str)) strcpy(aux->Categoria, str); break;
                default : break;
            }

            free(str);

        } while (1);
    }




    void RemoveCliente(ListaClientes* lista) {
        char cpf[20];

        if (CPFInput(cpf)) return;

        Cliente* anterior = 
# 345 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c" 3
                           ((void *)0)
# 345 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
                               ;
        Cliente* atual = lista->cliente;

        while (atual && strcmp(atual->CPF, cpf)) {
            anterior = atual;
            atual = atual->proximo;
        }

        if ((!anterior && strcmp(atual->CPF, cpf)) || !atual) {
            printf("\nhttp ERROR: 404 - Cliente NOT Found!!!\n");
            return;
        }

        ExibeCliente(atual);
        printf("\nTem certeza? [s/S]: ");
        int opc = getchar(); clearBuffer();

        if (opc != 's' && opc != 'S')
            return;

        if (!anterior) {
            Cliente* temp = lista->cliente;
            lista->cliente = lista->cliente->proximo;
            free(temp);
        }
        else {
            anterior->proximo = atual->proximo;
            free(atual);
        }

        lista->tamanho--;
        printf("\nRemovido!\n");
    }
# 386 "Entidades/Relatorios/../Locacoes/../Clientes/Clientes.c"
    void PersistenciaClientes(ListaClientes* lista) {
        if (!lista) return;

        FILE* file;
        Cliente* aux = lista->cliente;

        file = fopen("CLIENTES", "wb");

        if (!file) {
            fprint_err("CLIENTES");
            return;
        }

        for (size_t i=0; i < lista->tamanho; i++) {
            fwrite(aux, sizeof(Cliente), 1, file);
            aux = aux->proximo;
        }

        fclose(file);
    }




    ListaClientes* ReadClientes() {
        FILE* file;
        Cliente cliente;
        ListaClientes* lista = CriaListaClientes();

        file = fopen("CLIENTES", "rb");
        if (!file) {
            fprint_err("CLIENTES");
            return lista;
        }

        fread(&cliente, sizeof(Cliente), 1, file);
        do {
            InsereClienteNaLista(lista, ClonaCliente(&cliente));
            fread(&cliente, sizeof(Cliente), 1, file);
        } while (!feof(file));

        fclose(file);
        return lista;
    }






    void MenuClientes(ListaClientes* lista) {
        int opc;

        do {
            cleanScreen();

            printf("===============================\n");
            printf("      CLIENTES\n\n");
            printf("  1 - Cadastrar\n");
            printf("  2 - Exibir Um\n");
            printf("  3 - Exibir Todos\n");
            printf("  4 - Atualizar\n");
            printf("  5 - Remover\n");
            printf("  0 - Retornar\n");
            printf("\nEscolha: ");
            opc = getchar(); clearBuffer();

            switch (opc) {
                case '1': InsereCliente(lista); pause(); break;
                case '2': ExibeClientePorCPF(lista); pause(); break;
                case '3': ExibeTodosClientes(lista); pause(); break;
                case '4': AtualizaCliente(lista); break;
                case '5': RemoveCliente(lista); pause(); break;
                case '0': break;
                default : printf("\n INVÁLIDO!!!\n"); pause(); break;
            }

        } while (opc != '0');
    }
# 10 "Entidades/Relatorios/../Locacoes/Locacoes.h" 2
# 1 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 1
# 1 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.h" 1







# 1 "Entidades/Relatorios/../Locacoes/../Veiculos/../ValidaInput.h" 1
# 9 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.h" 2
# 23 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.h"
    typedef struct Veiculo {
        char Placa [10];
        char Montadora [50];
        char Modelo [50];
        int Ano;
        double ValorDiaria;
        struct Veiculo* proximo;
    } Veiculo;


    typedef struct {
        Veiculo* veiculo;
        size_t tamanho;
    } ListaVeiculos;







        Veiculo* CriaVeiculo();
        Veiculo* CriaVeiculoArgs(string, string, string, int, double);
        ListaVeiculos* CriaListaVeiculos();
        ListaVeiculos* CriaListaVeiculosArgs(Veiculo*);



        int PlacaInput (string);
        void ExibeVeiculo (Veiculo*);
        Veiculo* VeiculoPorPlaca (ListaVeiculos*, string);
        Veiculo* ClonaVeiculo (Veiculo*);



        void InsereVeiculo (ListaVeiculos*);
        void AtualizaVeiculo (ListaVeiculos*);
        void RemoveVeiculo (ListaVeiculos*);
        void InsereVeiculoNaLista (ListaVeiculos*, Veiculo*);
        void ExibeVeiculoPorPlaca (ListaVeiculos*);
        void ExibeTodosVeiculos (ListaVeiculos*);
        Veiculo* NovoVeiculo (ListaVeiculos*);



        void PersistenciaVeiculos(ListaVeiculos*);
        ListaVeiculos* ReadVeiculos();



        void MenuVeiculos(ListaVeiculos*);
# 2 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 2
# 10 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
    Veiculo* CriaVeiculo() {
        Veiculo* aux = (Veiculo *) malloc(sizeof(Veiculo));

        if (!aux)
            return 
# 14 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                  ((void *)0)
# 14 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                      ;

        aux->proximo = 
# 16 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                      ((void *)0)
# 16 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                          ;
        return aux;
    }




    Veiculo* CriaVeiculoArgs(string placa,
                             string montadora,
                             string modelo,
                             const int ano,
                             const double diaria) {

        Veiculo* aux = (Veiculo *) malloc(sizeof(Veiculo));

        if (!aux)
            return 
# 32 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                  ((void *)0)
# 32 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                      ;

        strcpy(aux->Placa, placa);
        strcpy(aux->Montadora, montadora);
        strcpy(aux->Modelo, modelo);
        aux->Ano = ano;
        aux->ValorDiaria = diaria;

        aux->proximo = 
# 40 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                      ((void *)0)
# 40 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                          ;
        return aux;
    }




    ListaVeiculos* CriaListaVeiculos() {
        ListaVeiculos* aux = (ListaVeiculos *) malloc(sizeof(ListaVeiculos));

        if (!aux)
            return 
# 51 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                  ((void *)0)
# 51 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                      ;

        aux->veiculo = 
# 53 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                      ((void *)0)
# 53 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                          ;
        aux->tamanho = 0;

        return aux;
    }




    ListaVeiculos* CriaListaVeiculosArgs(Veiculo* veiculo) {
        ListaVeiculos* aux = (ListaVeiculos *) malloc(sizeof(ListaVeiculos));

        if (!aux)
            return 
# 66 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                  ((void *)0)
# 66 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                      ;

        aux->veiculo = veiculo;
        aux->tamanho = 1;

        return aux;
    }
# 81 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
    int PlacaInput(string placa) {
        do {
            printf("\nDigite a Placa: ");
            fgets(placa, 10, 
# 84 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                                   (__acrt_iob_func(0))
# 84 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                                        );
            placa[strcspn(placa, "\n")] = 0;

            if (!strcmp(placa, "0")) return 1;

            if (ValidaPlaca(placa)) continue;

            for (size_t i = 0; i < 5; i++) {
                if (!isupper(placa[i])) { placa[i] = (char)toupper(placa[i]); }
            }

            return 0;

        } while (1);
    }




    void ExibeVeiculo(Veiculo* veiculo) {
        printf("\nPlaca       : "); PrintPlaca(veiculo->Placa);
        printf("\nMontadora   : %s", veiculo->Montadora);
        printf("\nModelo      : %s", veiculo->Modelo);
        printf("\nAno         : %4d", veiculo->Ano);
        printf("\nDiária (R$) : %.2lf", veiculo->ValorDiaria);
        printf("\n====================================================\n");
    }




    Veiculo* VeiculoPorPlaca(ListaVeiculos* lista, string placa) {
        Veiculo* aux = lista->veiculo;
        while (aux) {
            if (!strcmp(aux->Placa, placa))
                return aux;
            aux = aux->proximo;
        }
        return 
# 122 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
              ((void *)0)
# 122 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                  ;
    }




    Veiculo* ClonaVeiculo(Veiculo* veiculo) {
        Veiculo* temp = CriaVeiculoArgs(veiculo->Placa, veiculo->Montadora, veiculo->Modelo, veiculo->Ano, veiculo->ValorDiaria);
        temp->proximo = 
# 130 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                       ((void *)0)
# 130 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                           ;
        return temp;
    }
# 141 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
    void ExibeVeiculoPorPlaca(ListaVeiculos* lista) {
        char placa[10];

        if (PlacaInput(placa)) return;

        Veiculo* aux = VeiculoPorPlaca(lista, placa);

        if (!aux) {
            printf("\nhttp ERROR: 404 - Veículo NOT Found!!!\n");
            return;
        }

        ExibeVeiculo(aux);
    }




    void ExibeTodosVeiculos(ListaVeiculos* lista) {
        Veiculo* veiculo = lista->veiculo;
        while (veiculo) {
            ExibeVeiculo(veiculo);
            printf("\n");
            veiculo = veiculo->proximo;
        }
    }




    Veiculo* NovoVeiculo(ListaVeiculos* lista) {
        char placa [10];
        char montadora [50];
        char modelo [50];
        int ano;
        double diaria;

        cleanScreen();

        if (PlacaInput(placa)) return 
# 180 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                                     ((void *)0)
# 180 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                                         ;

        if (VeiculoPorPlaca(lista, placa)) {
            printf("\nA Placa informada já se encontra cadastrada no sistema!!!\n");
            return 
# 184 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                  ((void *)0)
# 184 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                      ;
        }

        printf("\nDigite a Montadora: ");
        fgets(montadora, 50, 
# 188 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                                       (__acrt_iob_func(0))
# 188 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                                            );
        montadora[strcspn(montadora, "\n")] = 0;

        printf("\nDigite o Modelo: ");
        fgets(modelo, 50, 
# 192 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                                 (__acrt_iob_func(0))
# 192 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                                      );
        modelo[strcspn(modelo, "\n")] = 0;

        printf("\nDigite o ano (YYYY): ");
        ano = Int();

        printf("\nDigite o valor da diária (R$88.88): ");
        diaria = Double();

        return CriaVeiculoArgs(placa, montadora, modelo, ano, diaria);
    }




    void InsereVeiculoNaLista(ListaVeiculos* lista, Veiculo* veiculo) {
        if (!veiculo)
            return;

        if (!lista->veiculo) {
            lista->veiculo = veiculo;
            lista->tamanho++;
            return;
        }

        Veiculo* aux = lista->veiculo;

        while(aux->proximo)
            aux = aux->proximo;

        aux->proximo = veiculo;
        lista->tamanho++;
    }




    void InsereVeiculo(ListaVeiculos* lista) {
        if (!lista)
            return;

        InsereVeiculoNaLista(lista, NovoVeiculo(lista));
    }




    void AtualizaVeiculo(ListaVeiculos* lista) {
        char placa[10];

        if (PlacaInput(placa)) return;

        Veiculo* aux = VeiculoPorPlaca(lista, placa);

        if (!aux) {
            printf("\nhttp ERROR: 404 - Veículo NOT Found!!!\n");
            pause();
            return;
        }

        int opc;
        do {
            cleanScreen();
            ExibeVeiculo(aux);

            printf("\nQual informação deseja alterar?\n");
            printf("\n 1 - Ano");
            printf("\n 2 - Diária (R$)");
            printf("\n 0 - Retornar");
            printf("\n\nEscolha: ");
            opc = getchar(); clearBuffer();

            if (opc == '0') break;

            if (opc < '1' || opc > '2') {
                printf("\nINVÁLIDO!!!\n");
                pause();
                continue;
            }

            printf("\nDigite o novo valor: ");

            switch(opc) {
                case '1': aux->Ano = Int(); break;
                case '2': aux->ValorDiaria = Double(); break;
                default : break;
            }

        } while (1);
    }




    void RemoveVeiculo(ListaVeiculos* lista) {
        char placa[10];

        if (PlacaInput(placa)) return;

        Veiculo* anterior = 
# 291 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c" 3
                           ((void *)0)
# 291 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
                               ;
        Veiculo* atual = lista->veiculo;

        while (atual && strcmp(atual->Placa, placa)) {
            anterior = atual;
            atual = atual->proximo;
        }

        if ((!anterior && strcmp(atual->Placa, placa)) || !atual) {
            printf("\nhttp ERROR: 404 - Veículo NOT Found!!!\n");
            return;
        }

        ExibeVeiculo(atual);
        printf("\nTem certeza? [s/S]: ");
        int opc = getchar(); clearBuffer();

        if (opc != 's' && opc != 'S')
            return;

        if (!anterior) {
            Veiculo* temp = lista->veiculo;
            lista->veiculo = lista->veiculo->proximo;
            free(temp);
        }
        else {
            anterior->proximo = atual->proximo;
            free(atual);
        }

        lista->tamanho--;
        printf("\nRemovido!\n");
    }
# 332 "Entidades/Relatorios/../Locacoes/../Veiculos/Veiculos.c"
    void PersistenciaVeiculos(ListaVeiculos* lista) {
        if (!lista) return;

        FILE* file;
        Veiculo* aux = lista->veiculo;

        file = fopen("VEICULOS", "wb");

        if (!file) {
            fprint_err("VEICULOS");
            return;
        }

        for (size_t i=0; i < lista->tamanho; i++) {
            fwrite(aux, sizeof(Veiculo), 1, file);
            aux = aux->proximo;
        }

        fclose(file);
    }




    ListaVeiculos* ReadVeiculos() {
        FILE* file;
        Veiculo veiculo;
        ListaVeiculos* lista = CriaListaVeiculos();

        file = fopen("VEICULOS", "rb");
        if (!file) {
            fprint_err("VEICULOS");
            return lista;
        }

        fread(&veiculo, sizeof(Veiculo), 1, file);
        do {
            InsereVeiculoNaLista(lista, ClonaVeiculo(&veiculo));
            fread(&veiculo, sizeof(Veiculo), 1, file);
        } while (!feof(file));

        fclose(file);
        return lista;
    }






    void MenuVeiculos(ListaVeiculos* lista) {
        int opc;

        do {
            cleanScreen();

            printf("===============================\n");
            printf("      VEÍCULOS\n\n");
            printf("  1 - Cadastrar\n");
            printf("  2 - Exibir Um\n");
            printf("  3 - Exibir Todos\n");
            printf("  4 - Atualizar\n");
            printf("  5 - Remover\n");
            printf("  0 - Retornar\n");
            printf("\nEscolha: ");
            opc = getchar(); clearBuffer();

            switch (opc) {
                case '1': InsereVeiculo(lista); pause(); break;
                case '2': ExibeVeiculoPorPlaca(lista); pause(); break;
                case '3': ExibeTodosVeiculos(lista); pause(); break;
                case '4': AtualizaVeiculo(lista); break;
                case '5': RemoveVeiculo(lista); pause(); break;
                case '0': break;
                default : printf("\n INVALIDO!!!\n"); pause(); break;
            }

        } while (opc != '0');
    }
# 11 "Entidades/Relatorios/../Locacoes/Locacoes.h" 2
# 23 "Entidades/Relatorios/../Locacoes/Locacoes.h"
    typedef struct Locacao {
        char CPF[20];
        char Placa[10];
        DateTime DataLocacao;
        DateTime DataDevolucao;
        double ValorTotal;
        char Chave[100];
        struct Locacao* proximo;
    } Locacao;

    typedef struct {
        Locacao* locacao;
        size_t tamanho;
    } ListaLocacoes;

    typedef struct Termo {
        int indice;
        char chave[100];
        struct Termo* proximo;
    } Termo;

    typedef struct {
        Termo* termo;
    } DicionarioLocacoes;







        Termo* CriaTermoArgs (const Locacao*, int);
        Locacao* CriaLocacaoArgs (string, string, DateTime*, DateTime*, double);
        ListaLocacoes* CriaListaLocacoes();
        ListaLocacoes* CriaListaLocacoesArgs(Locacao*);
        DicionarioLocacoes* CriaDicionarioLocacoes();



        void ExibeLocacao (Locacao*);
        void ExibeListaLocacoes (ListaLocacoes*);
        void InsereNoDicionario (DicionarioLocacoes*, const Locacao*, int);
        string GeraChave (const Locacao*);
        Locacao* ClonaLocacao (Locacao*);
        Locacao* LocacaoPorChave (ListaLocacoes*, string);
        Locacao* LocacaoPorIndice (DicionarioLocacoes*, ListaLocacoes*, int);
        ListaLocacoes* ListaLocacaoPorCPF (ListaLocacoes*, string);
        ListaLocacoes* ListaLocacaoPorPlaca (ListaLocacoes*, string);
        ListaLocacoes* ListaLocacaoPorData (ListaLocacoes*, DateTime*, DateTime*);
        ListaLocacoes* ListaLocacoesPorIndice (ListaLocacoes*, int);
        DicionarioLocacoes* MapListaParaDicionario (const ListaLocacoes*);



        int ValidaDataLocacao (DateTime*, DateTime*);
        int ValidaDataRange (ListaLocacoes*, Locacao*);
        int ValidaLocacao (Locacao*, ListaClientes*, ListaVeiculos*);
        void InsereLocacaoNaLista (ListaLocacoes*, Locacao*);
        void AtualizaLocacao (ListaLocacoes*, ListaLocacoes*);
        void InsereLocacao (ListaClientes*, ListaVeiculos*, ListaLocacoes*);
        void TelaLocacaoIndex (ListaLocacoes*, ListaClientes*, ListaVeiculos*, int);
        void RemoveLocacao (ListaLocacoes*, ListaLocacoes*, ListaClientes*, ListaVeiculos*);
        Locacao* NovaLocacao (ListaClientes*, ListaVeiculos*);



        void PersistenciaLocacoes(ListaLocacoes*);
        ListaLocacoes* ReadLocacoes();



        void MenuLocacoes(ListaClientes*, ListaVeiculos*, ListaLocacoes*);
# 2 "Entidades/Relatorios/../Locacoes/Locacoes.c" 2
# 10 "Entidades/Relatorios/../Locacoes/Locacoes.c"
    Locacao* CriaLocacaoArgs(string cpf,
                             string placa,
                             DateTime* dataLocacao,
                             DateTime* dataDevolucao,
                             const double valor) {

        Locacao* aux = (Locacao *) malloc(sizeof(Locacao));

        if (!aux)
            return 
# 19 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                  ((void *)0)
# 19 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                      ;

        strcpy(aux->CPF, cpf);
        strcpy(aux->Placa, placa);
        aux->DataLocacao = *dataLocacao;
        aux->DataDevolucao = *dataDevolucao;
        aux->ValorTotal = valor;
        strcpy(aux->Chave, GeraChave(aux));

        aux->proximo = 
# 28 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                      ((void *)0)
# 28 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                          ;



        return aux;
    }




    ListaLocacoes* CriaListaLocacoes() {
        ListaLocacoes* aux = (ListaLocacoes *) malloc(sizeof(ListaLocacoes));

        if (!aux)
            return 
# 42 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                  ((void *)0)
# 42 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                      ;

        aux->locacao = 
# 44 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                      ((void *)0)
# 44 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                          ;
        aux->tamanho = 0;

        return aux;
    }




    ListaLocacoes* CriaListaLocacoesArgs(Locacao* locacao) {
        ListaLocacoes* aux = (ListaLocacoes *) malloc(sizeof(ListaLocacoes));

        if (!aux)
            return 
# 57 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                  ((void *)0)
# 57 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                      ;

        aux->locacao = locacao;
        aux->tamanho = 1;

        return aux;
    }




    Termo* CriaTermoArgs(const Locacao* locacao, const int indice) {
        Termo* aux = (Termo *) malloc(sizeof(Termo));

        if (!aux)
            return 
# 72 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                  ((void *)0)
# 72 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                      ;

        aux->indice = indice;
        strcpy(aux->chave, locacao->Chave);
        aux->proximo = 
# 76 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                      ((void *)0)
# 76 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                          ;

        return aux;
    }




    DicionarioLocacoes* CriaDicionarioLocacoes() {
        DicionarioLocacoes* aux = (DicionarioLocacoes *) malloc(sizeof(DicionarioLocacoes));

        if (!aux)
            return 
# 88 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                  ((void *)0)
# 88 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                      ;

        aux->termo = 
# 90 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                    ((void *)0)
# 90 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                        ;

        return aux;
    }
# 102 "Entidades/Relatorios/../Locacoes/Locacoes.c"
    string GeraChave(const Locacao* locacao) {
        string result = String(100);

        strcpy(result, locacao->CPF);
        strcat(result, locacao->Placa);
        strcat(result, FormataData(&locacao->DataLocacao));
        strcat(result, FormataData(&locacao->DataDevolucao));

        return result;
    }




    void ExibeLocacao(Locacao* locacao) {
        printf("\nCPF              : "); PrintCPF(locacao->CPF);
        printf("\nPlaca            : "); PrintPlaca(locacao->Placa);
        printf("\nData Locação     : "); ExibeData(&locacao->DataLocacao);
        printf("\nData Devolução   : "); ExibeData(&locacao->DataDevolucao);
        printf("\nValor Total (R$) : %.2lf", locacao->ValorTotal);
        printf("\n====================================================\n");
    }




    void ExibeListaLocacoes(ListaLocacoes* lista) {
        if (!lista) return;

        Locacao* aux = lista->locacao;
        int i = 1;
        while (aux) {
            printf("\n     LOCACAO %02d", i++);
            ExibeLocacao(aux);
            aux = aux->proximo;
        }
    }




    Locacao* LocacaoPorChave(ListaLocacoes* lista, string chave) {
        Locacao* aux = lista->locacao;
        while(aux) {
            if (!strcmp(aux->Chave, chave)) {
                return aux;
            }
            aux = aux->proximo;
        }
        return 
# 151 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
              ((void *)0)
# 151 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                  ;
    }




    Locacao* LocacaoPorIndice(DicionarioLocacoes* dicionario,
                              ListaLocacoes* lista,
                              const int indice) {
        if (indice <= 0)
            return 
# 161 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                  ((void *)0)
# 161 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                      ;

        Termo* aux = dicionario->termo;

        while (aux) {
            if (aux->indice == indice)
                return LocacaoPorChave(lista, aux->chave);

            aux = aux->proximo;
        }

        return 
# 172 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
              ((void *)0)
# 172 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                  ;
    }




    ListaLocacoes* ListaLocacaoPorCPF(ListaLocacoes* lista, string cpf) {
        ListaLocacoes* filtrada = CriaListaLocacoes();
        Locacao* aux = lista->locacao;

        while (aux) {
            if (!strcmp(aux->CPF, cpf))
                InsereLocacaoNaLista(filtrada, ClonaLocacao(aux));

            aux = aux->proximo;
        }
        return filtrada;
    }




    ListaLocacoes* ListaLocacaoPorPlaca(ListaLocacoes* lista, string placa) {
        ListaLocacoes* filtrada = CriaListaLocacoes();
        Locacao* aux = lista->locacao;

        while (aux) {
            if (!strcmp(aux->Placa, placa))
                InsereLocacaoNaLista(filtrada, ClonaLocacao(aux));

            aux = aux->proximo;
        }
        return filtrada;
    }




    ListaLocacoes* ListaLocacaoPorData(ListaLocacoes* lista,
                                       DateTime* dataFinal,
                                       DateTime* dataInicial) {

        ListaLocacoes* filtrada = CriaListaLocacoes();
        Locacao* aux = lista->locacao;

        while (aux) {
            if (DataRangeInRange(&aux->DataDevolucao, &aux->DataLocacao, dataFinal, dataInicial) == 1)
                InsereLocacaoNaLista(filtrada, ClonaLocacao(aux));

            aux = aux->proximo;
        }
        return filtrada;
    }




    Locacao* ClonaLocacao(Locacao* locacao) {
        Locacao* temp = CriaLocacaoArgs(locacao->CPF, locacao->Placa, &locacao->DataLocacao, &locacao->DataDevolucao, locacao->ValorTotal);
        temp->proximo = 
# 231 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                       ((void *)0)
# 231 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                           ;
        return temp;
    }




    ListaLocacoes* ListaLocacoesPorIndice(ListaLocacoes* lista, const int opc) {
        if (opc == 'c' || opc == 'C') {
            char cpf[20];

            if (CPFInput(cpf)) return 
# 242 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                                     ((void *)0)
# 242 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                                         ;

            ListaLocacoes* filtrada = ListaLocacaoPorCPF(lista, cpf);

            if (!filtrada->locacao) {
                printf("\nhttp ERROR: 404 - CPF NOT Found!!!\n");
                return 
# 248 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                      ((void *)0)
# 248 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                          ;
            }

            return filtrada;
        }

        else if (opc == 'p' || opc == 'P') {
            char placa[10];

            if (PlacaInput(placa)) return 
# 257 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                                         ((void *)0)
# 257 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                                             ;

            ListaLocacoes* filtrada = ListaLocacaoPorPlaca(lista, placa);

            if (!filtrada->locacao) {
                printf("\nhttp ERROR: 404 - Placa NOT Found!!!\n");
                return 
# 263 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                      ((void *)0)
# 263 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                          ;
            }

            return filtrada;
        }

        else if (opc == 'd' || opc == 'D') {
            printf("\nData Inicial:");
            DateTime* dataInicial = CriaDataValida();

            printf("\nData Final:");
            DateTime* dataFinal = CriaDataValida();

            ListaLocacoes* filtrada = ListaLocacaoPorData(lista, dataFinal, dataInicial);

            if(!filtrada->locacao) {
                printf("\nhttp ERROR: 404 - Locacao NOT Found!!!\n");
                return 
# 280 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                      ((void *)0)
# 280 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                          ;
            }

            free(dataInicial);
            free(dataFinal);

            return filtrada;
        }

        else if (opc == '0') return 
# 289 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                                   ((void *)0)
# 289 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                                       ;

        else printf("\n INVÁLIDO!!!\n\n");

        return 
# 293 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
              ((void *)0)
# 293 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                  ;
    }




    void InsereNoDicionario(DicionarioLocacoes* dicionario,
                            const Locacao* locacao,
                            const int indice) {
        if (!locacao)
            return;

        Termo* termo = CriaTermoArgs(locacao, indice);

        if (!dicionario->termo) {
            dicionario->termo = termo;
            return;
        }

        Termo* aux = dicionario->termo;

        while (aux->proximo)
            aux = aux->proximo;

        aux->proximo = termo;
    }




    DicionarioLocacoes* MapListaParaDicionario(const ListaLocacoes* lista) {
        DicionarioLocacoes* dicionario = CriaDicionarioLocacoes();
        Locacao* aux = lista->locacao;
        int i = 1;

        while (aux) {
            InsereNoDicionario(dicionario, aux, i++);
            aux = aux->proximo;
        }

        return dicionario;
    }
# 343 "Entidades/Relatorios/../Locacoes/Locacoes.c"
    void TelaLocacaoIndex(ListaLocacoes* listaLocacoes,
                          ListaClientes* listaClientes,
                          ListaVeiculos* listaVeiculos,
                          const int isUpdateDelete) {
        int opc;

        do {
            cleanScreen();

            printf("\nSelecione o Indexador:");
            printf("\n CPF   [c/C]");
            printf("\n Placa [p/P]");
            printf("\n Data  [d/D]");
            printf("\n 0 - Retorna");
            printf("\n--> ");

            opc = getchar(); clearBuffer();
            if (opc == '0') return;

            ListaLocacoes* filtrada = ListaLocacoesPorIndice(listaLocacoes, opc);
            ExibeListaLocacoes(filtrada);

            if (isUpdateDelete == 1 && filtrada) {
                AtualizaLocacao(listaLocacoes, filtrada);
                free(filtrada);
                return;
            }

            if (isUpdateDelete == 2 && filtrada) {
                RemoveLocacao(listaLocacoes, filtrada, listaClientes, listaVeiculos);
                free(filtrada);
                return;
            }

            pause();
            free(filtrada);

        } while (1);
    }




    Locacao* NovaLocacao(ListaClientes* listaClientes,
                         ListaVeiculos* listaVeiculos) {

        char cpf [20];
        char placa [10];
        DateTime* dataLocacao;
        DateTime* dataDevolucao;
        double valor;

        do {
            cleanScreen();
            printf("\nDigite 0 para cancelar!");

            if (CPFInput(cpf)) return 
# 399 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                                     ((void *)0)
# 399 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                                         ;

            if (!ClientePorCPF(listaClientes, cpf)) {
                printf("\nhttp ERROR: 404 - CPF NOT Found!!!\n"); pause();
                continue;
            }

            if (PlacaInput(placa)) return 
# 406 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                                         ((void *)0)
# 406 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                                             ;

            const Veiculo* veiculo = VeiculoPorPlaca(listaVeiculos, placa);

            if (!veiculo) {
                printf("\nhttp ERROR: 404 - Placa NOT Found!!!\n"); pause();
                continue;
            }

            printf("\nData da Locação: ");
            dataLocacao = CriaDataValida();

            printf("\nData da Devolução: ");
            dataDevolucao = CriaDataValida();

            if (!ValidaDataLocacao(dataDevolucao, dataLocacao)) {
                pause(); continue;
            }

            valor = veiculo->ValorDiaria;

            break;

        } while(1);

        return CriaLocacaoArgs(cpf, placa, dataLocacao, dataDevolucao, valor*DiferencaEmDias(dataDevolucao, dataLocacao));
    }




    void InsereLocacaoNaLista(ListaLocacoes* lista, Locacao* locacao) {
        if (!locacao)
            return;

        if (!lista->locacao) {
            lista->locacao = locacao;
            lista->tamanho++;
            return;
        }

        Locacao* aux = lista->locacao;

        while (aux->proximo)
            aux = aux->proximo;

        aux->proximo = locacao;
        lista->tamanho++;
    }




    void InsereLocacao(ListaClientes* listaClientes,
                       ListaVeiculos* listaVeiculos,
                       ListaLocacoes* listaLocacoes) {

        if (!listaLocacoes || !listaClientes || !listaVeiculos)
            return;

        Locacao* novaLocacao = NovaLocacao(listaClientes, listaVeiculos);

        if (novaLocacao && LocacaoPorChave(listaLocacoes, novaLocacao->Chave)) {
            printf("\nERRO: Existe uma Locação com as mesmas informações no sistema...\n");
            free(novaLocacao);
            return;
        }

        if (novaLocacao && !ValidaDataRange(listaLocacoes, novaLocacao)) {
            printf("\nERRO: Datas informadas conflitam com registros anteriores!!!\n");
            free(novaLocacao);
            return;
        }

        InsereLocacaoNaLista(listaLocacoes, novaLocacao);
    }




    void AtualizaLocacao(ListaLocacoes* lista, ListaLocacoes* filtrada) {
        int loc;

        do {
            printf("\nDigite o índice da Locação que deseja alterar: ");
            loc = Int();

            if (loc <= 0)
                return;

            if (loc > filtrada->tamanho)
                printf("\nINVÁLIDO!!!\n");

        } while (loc > filtrada->tamanho);

        DicionarioLocacoes* dicionario = MapListaParaDicionario(filtrada);
        Locacao* locacao = LocacaoPorIndice(dicionario, lista, loc);
        free(dicionario);

        int opc;
        do {
            cleanScreen();
            ExibeLocacao(locacao);

            printf("\nQual informação deseja alterar?\n");
            printf("\n 1 - Valor Diária");
            printf("\n 0 - Retornar");
            printf("\n\nEscolha: ");
            opc = getchar(); clearBuffer();

            if (opc == '0') break;

            if (opc != '1') {
                printf("\nINVÁLIDO!!!\n");
                pause();
                continue;
            }

            printf("\nDigite o novo valor: ");
            locacao->ValorTotal = Double()*DiferencaEmDias(&locacao->DataDevolucao, &locacao->DataLocacao);

        } while(1);
    }




    void RemoveLocacao(ListaLocacoes* listaLocacoes,
                       ListaLocacoes* filtrada,
                       ListaClientes* listaClientes,
                       ListaVeiculos* listaVeiculos) {
        int loc;

        do {
            printf("\nDigite o índice da Locação que deseja remover: ");
            loc = Int();

            if (loc <= 0)
                return;

            if (loc > filtrada->tamanho)
                printf("\nINVÁLIDO!!!\n");

        } while (loc > filtrada->tamanho);

        DicionarioLocacoes* dicionario = MapListaParaDicionario(filtrada);
        Locacao* locacao = LocacaoPorIndice(dicionario, listaLocacoes, loc);
        free(dicionario);

        if (!ValidaLocacao(locacao, listaClientes, listaVeiculos)) return;

        ExibeLocacao(locacao);
        printf("\nTem certeza? [s/S]: ");
        int opc = getchar(); clearBuffer();

        if (opc != 's' && opc != 'S') return;

        Locacao* anterior = 
# 563 "Entidades/Relatorios/../Locacoes/Locacoes.c" 3
                           ((void *)0)
# 563 "Entidades/Relatorios/../Locacoes/Locacoes.c"
                               ;
        Locacao* atual = listaLocacoes->locacao;

        while (atual && strcmp(atual->Chave, locacao->Chave)) {
            anterior = atual;
            atual = atual->proximo;
        }

        if (!anterior) {
            Locacao* temp = listaLocacoes->locacao;
            listaLocacoes->locacao = listaLocacoes->locacao->proximo;
            free(temp);
        }
        else {
            anterior->proximo = atual->proximo;
            free(atual);
        }

        listaLocacoes->tamanho--;
        printf("\nRemovido!\n");
    }




    int ValidaLocacao(Locacao* locacao, ListaClientes* listaClientes, ListaVeiculos* listaVeiculos) {
        if (ClientePorCPF(listaClientes, locacao->CPF)) {
            printf("\nERRO: Cliente possui cadastro ativo no sistema!\n");
            return 0;
        }

        if (VeiculoPorPlaca(listaVeiculos, locacao->Placa)) {
            printf("\nERRO: Veiculo possui cadastro ativo no sistema!\n");
            return 0;
        }

        return 1;
    }




    int ValidaDataLocacao(DateTime* dataDevolucao, DateTime* dataLocacao) {
        if (!dataLocacao || !dataDevolucao) {
            printf("\nhttp ERROR 202: Falha ao criar Data...\n");
            return 0;
        }

        if (difftime(mktime(dataDevolucao), mktime(dataLocacao)) <= 0) {
            printf("\nA Data de Devolucao deve ser maior do que a Data de Locacao!!!\n");
            return 0;
        }

        return 1;
    }




    int ValidaDataRange(ListaLocacoes* listaLocacoes, Locacao* locacao_pendente) {
        Locacao* aux = listaLocacoes->locacao;
        Locacao* temp;
        ListaLocacoes* lista;

        while (aux) {
            if (!strcmp(locacao_pendente->CPF, aux->CPF)) {
                lista = ListaLocacaoPorCPF(listaLocacoes, locacao_pendente->CPF);
                temp = lista->locacao;

                while (temp) {
                    if (DataRangeInRange( &locacao_pendente->DataDevolucao,
                                          &locacao_pendente->DataLocacao,
                                          &temp->DataDevolucao,
                                          &temp->DataLocacao) != -1) { return 0; }
                    temp = temp->proximo;
                }
                free(lista);
            }

            if (!strcmp(locacao_pendente->Placa, aux->Placa)) {
                lista = ListaLocacaoPorPlaca(listaLocacoes, locacao_pendente->Placa);
                temp = lista->locacao;

                while (temp) {
                    if (DataRangeInRange( &locacao_pendente->DataDevolucao,
                                          &locacao_pendente->DataLocacao,
                                          &temp->DataDevolucao,
                                          &temp->DataLocacao) != -1) { return 0; }
                    temp = temp->proximo;
                }
                free(lista);
            }

            aux = aux->proximo;
        }

        return 1;
    }
# 669 "Entidades/Relatorios/../Locacoes/Locacoes.c"
    void PersistenciaLocacoes(ListaLocacoes* lista) {
        if (!lista) return;

        FILE* file;
        Locacao* aux = lista->locacao;

        file = fopen("LOCACOES", "wb");

        if (!file) {
            fprint_err("LOCACOES");
            return;
        }

        for (size_t i=0; i < lista->tamanho; i++) {
            fwrite(aux, sizeof(Locacao), 1, file);
            aux = aux->proximo;
        }

        fclose(file);
    }




    ListaLocacoes* ReadLocacoes() {
        FILE* file;
        Locacao locacao;
        ListaLocacoes* lista = CriaListaLocacoes();

        file = fopen("LOCACOES", "rb");
        if (!file) {
            fprint_err("LOCACOES");
            return lista;
        }

        fread(&locacao, sizeof(Locacao), 1, file);
        do {
            InsereLocacaoNaLista(lista, ClonaLocacao(&locacao));
            fread(&locacao, sizeof(Locacao), 1, file);
        } while (!feof(file));

        fclose(file);
        return lista;
    }






    void MenuLocacoes(ListaClientes* listaClientes,
                      ListaVeiculos* listaVeiculos,
                      ListaLocacoes* listaLocacoes) {
        int opc;

        do {
            cleanScreen();

            printf("===============================\n");
            printf("      LOCAÇÕES\n\n");
            printf("  1 - Cadastrar\n");
            printf("  2 - Exibir por Indexador\n");
            printf("  3 - Exibir Todas\n");
            printf("  4 - Atualizar\n");
            printf("  5 - Remover\n");
            printf("  0 - Retornar\n");
            printf("\nEscolha: ");
            opc = getchar(); clearBuffer();

            switch (opc) {
                case '1': InsereLocacao(listaClientes, listaVeiculos, listaLocacoes); pause(); break;
                case '2': TelaLocacaoIndex(listaLocacoes, listaClientes, listaVeiculos, 0); break;
                case '3': ExibeListaLocacoes(listaLocacoes); pause(); break;
                case '4': TelaLocacaoIndex(listaLocacoes, listaClientes, listaVeiculos, 1); pause(); break;
                case '5': TelaLocacaoIndex(listaLocacoes, listaClientes, listaVeiculos, 2); pause(); break;
                case '0': break;
                default : printf("\n INVALIDO!!!\n"); pause(); break;
            }

        } while (opc != '0');
    }
# 10 "Entidades/Relatorios/Relatorios.h" 2





    void ExibeLocacoesPorPlaca (ListaLocacoes*);
    void ExibeLocacoesPorData (ListaLocacoes*);
    void MenuRelatorios (ListaLocacoes*);
# 2 "Entidades/Relatorios/Relatorios.c" 2
# 10 "Entidades/Relatorios/Relatorios.c"
    void ExibeLocacoesPorPlaca(ListaLocacoes* lista) {
        char placa[10];

        if (PlacaInput(placa)) return;

        ListaLocacoes* filtrada = ListaLocacaoPorPlaca(lista, placa);

        if (!filtrada->locacao) {
            printf("\nhttp ERROR: 404 - Placa NOT Found!!!\n");
            return;
        }

        ExibeListaLocacoes(filtrada);
        free(filtrada);
    }




    void ExibeLocacoesPorData(ListaLocacoes* lista) {
        printf("\nData Inicial:");
        DateTime* dataInicial = CriaDataValida();

        printf("\nData Final:");
        DateTime* dataFinal = CriaDataValida();

        ListaLocacoes* filtrada = ListaLocacaoPorData(lista, dataFinal, dataInicial);

        if(!filtrada->locacao) {
            printf("\nhttp ERROR: 404 - Locacao NOT Found!!!\n");
            return;
        }

        ExibeListaLocacoes(filtrada);

        free(dataInicial);
        free(dataFinal);
        free(filtrada);
    }






    void MenuRelatorios(ListaLocacoes* lista) {
        int opc;

        do {
            cleanScreen();

            printf("===============================\n");
            printf("      RELATÓRIOS\n\n");
            printf("  1 - Locações por Placa\n");
            printf("  2 - Locações por Data\n");
            printf("  0 - Retornar\n");
            printf("\nEscolha: ");
            opc = getchar(); clearBuffer();

            switch (opc) {
                case '1': ExibeLocacoesPorPlaca(lista); break;
                case '2': ExibeLocacoesPorData(lista); break;
                case '0': return;
                default : printf("\n INVÁLIDO!!!\n"); break;
            }

            pause();

        } while (1);
    }
# 2 "Program.c" 2

void PreencheClientes(ListaClientes* lista) {
    InsereClienteNaLista(lista, CriaClienteArgs("45612378966", "Stulla Sigurdasson",
                                                "Rua Reykjavik Jokull, 93", "A B"));
    InsereClienteNaLista(lista, CriaClienteArgs("12345678911", "Frida Halfdasdottir",
                                                "Rua Aegir Egmund, 64", "A"));
    InsereClienteNaLista(lista, CriaClienteArgs("36925814722", "Njall Gustavsson",
                                                "Alameda Sogafjordur, 86", "A D"));
}

void PreencheVeiculos(ListaVeiculos* lista) {
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("ABC1234", "Toyota", "Prius", 2020, 68.49));
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("ABC9369", "Honda", "Civic", 2016, 73.58));
    InsereVeiculoNaLista(lista, CriaVeiculoArgs("CDF9369", "Hyundai", "Azera", 2013, 89.61));
}

void PreencheLocacoes(ListaLocacoes* lista) {
    DateTime* data1 = CriaDateTime("05", "09", "2020");
    DateTime* data2 = CriaDateTime("13", "10", "2020");
    InsereLocacaoNaLista(lista, CriaLocacaoArgs("12345678911", "ABC9369", data1, data2,
                                                73.58*DiferencaEmDias(data2, data1)));

    data1 = CriaDateTime("23", "05", "2022");
    data2 = CriaDateTime("14", "07", "2022");
    InsereLocacaoNaLista(lista, CriaLocacaoArgs("12345678911", "ABC1234", data1, data2,
                                                68.49*DiferencaEmDias(data2, data1)));
}

int LogOff(ListaClientes * listaClientes, ListaVeiculos* listaVeiculos, ListaLocacoes* listaLocacoes) {
    printf("\nDeseja salvar as alterações?");
    printf("\nDigite qualquer tecla para voltar");
    printf("\n   1 = SIM  ||  0 = NAO");
    printf("\n--> ");
    int opc = getchar(); clearBuffer();

    if (opc == '1') {
        PersistenciaClientes(listaClientes);
        PersistenciaVeiculos(listaVeiculos);
        PersistenciaLocacoes(listaLocacoes);
        return '0';
    }

    return opc;
}

void Menu(ListaClientes * listaClientes, ListaVeiculos* listaVeiculos, ListaLocacoes* listaLocacoes) {
    int opc;

    do {
        cleanScreen();

        printf("================================\n");
        printf("      Locações Louca-Ações!\n\n");
        printf("  1 - Clientes\n");
        printf("  2 - Veículos\n");
        printf("  3 - Locações\n");
        printf("  4 - Relatórios\n");
        printf("  0 - Retornar\n");
        printf("\nEscolha: ");
        opc = getchar(); clearBuffer();

        switch (opc) {
            case '1': MenuClientes(listaClientes); break;
            case '2': MenuVeiculos(listaVeiculos); break;
            case '3': MenuLocacoes(listaClientes, listaVeiculos, listaLocacoes); break;
            case '4': MenuRelatorios(listaLocacoes); break;
            case '0': opc = LogOff(listaClientes, listaVeiculos, listaLocacoes); pause(); break;
            default : printf("\n INVÁLIDO!!!\n"); pause(); break;
        }

    } while(opc != '0');
}

int main(int argc, char const *argv[]) {
    Locale();

    ListaClientes* listaClientes = ReadClientes();
    ListaVeiculos* listaVeiculos = ReadVeiculos();
    ListaLocacoes* listaLocacoes = ReadLocacoes();

    if (!listaClientes->cliente) PreencheClientes(listaClientes);
    if (!listaVeiculos->veiculo) PreencheVeiculos(listaVeiculos);
    if (!listaLocacoes->locacao) PreencheLocacoes(listaLocacoes);

    Menu(listaClientes, listaVeiculos, listaLocacoes);
    printf("\nlistaLocacoes->locacao->Chave: %s\n\n", listaLocacoes->locacao->Chave);

    return 0;
}
