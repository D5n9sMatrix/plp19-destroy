' Description:
' __FB_OPTION_EXPLICIT__ indicates if Option Explicit has been used previously in the source.
' Returns zero (0) if the option has not been set. Returns non-zero (-1) if the option has been set.
Declare Function Option_Explicit () As Integer

#if( __FB_OPTION_EXPLICIT__ = 0 )
  #error Option Explicit must used With This module
#endif

End