' Description:
' Indicates if by default, string literals are processed for escape characters when not explicitly prefixed with the 
' $ operator for non-escaped strings, or the ! operator for escaped strings.
' The default method for processing string literals is set by usage of the -lang command line option during 
' compilation or usage of Option Escape in the source file.
' __FB_OPTION_ESCAPE__ returns zero (0) if the option has not been set. Returns non-zero (-1) if the option has been set.
Declare Function Option_Escape () As Integer

#if( __FB_OPTION_ESCAPE__ <> 0 )
  #error Option Escape must Not be used With This include file
#endif

End
