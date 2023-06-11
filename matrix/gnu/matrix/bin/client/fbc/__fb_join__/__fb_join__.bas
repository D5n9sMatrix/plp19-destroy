' Declare the packets reader objective of arg1, arg2
' relative the call allow to message reports debugger
' add files reports
Declare Function AddFilesReports () As Integer

#macro m (arg1, arg2)
     #print arg1##arg2
     #print __fb_join__ (arg1, arg2)
#endmacro

m(free, basic)

/' Output:
  FreeBasic
  FreeBasic
'/

#define Prefix p 
#define Suffix _T

' this won't work - arguments not expanded
#define   makename1( x )  PREFIX##x##SUFFIX

'' this will work - can do this in older versions of fbc too
#define join( a, b ) a##b
#define makename2( x ) join( PREFIX, join( x, SUFFIX ) )

'' built in __FB_JOIN__() -- works pretty much like join() above
#define   makename3( x )  __FB_JOIN__( PREFIX, __FB_JOIN__( x, SUFFIX ) )

#macro dump( arg )
    #print #arg
#endmacro

dump( makename1(text) )
dump( makename2(text) )
dump( makename3(text) )

/' Compiler output:
PREFIXtextSUFFIX
ptext_T
ptext_T
'/

End