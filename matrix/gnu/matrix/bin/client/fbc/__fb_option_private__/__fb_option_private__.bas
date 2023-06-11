' Description:
' Indicates if by default Function's and Sub's have module scope or global scope when not explicitly specified with Private or Public.

' The default scope specifier for functions and subs is set by usage of the -lang command line option during compilation 
' or usage of Option Private in the source file.

' __FB_OPTION_PRIVATE__ returns zero (0) if the option has not been set. Returns non-zero (-1) 
' if the option has been set.
Declare Function Option_Private () As Integer

#if( __FB_OPTION_PRIVATE__ <> 0 )
  #error Option Private must Not be used With This module
#endif

End