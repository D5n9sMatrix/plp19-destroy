' Description:
' Indicates if parameters to a Function or Sub are passed by reference as with Byref, 
' or by value as with Byval by default when the by value / by reference specifier is not explicitly stated.
' __FB_OPTION_BYVAL__ is set to non-zero (-1) if by default parameters are passed value, and zero (0) 
' if by default parameters are passed by reference.
' The default for passing parameters by reference or by value is determined by the -lang command line option 
' used during compilation or usage of Option Byval in the source file.
Declare Function Option_ByVal () As Integer

#if( __FB_OPTION_BYVAL__ <> 0 )
  #error Option ByVal must Not be used With This source
#endif

End