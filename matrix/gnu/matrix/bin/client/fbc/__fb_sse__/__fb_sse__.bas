' Description:
' Define without a value created at compile time if SSE floating point arithmetics is enabled.
Declare Function SSE () As Integer

#ifdef __FB_SSE__
  ' ... instructions only for SSE ...
#else
  ' ... instructions not for SSE ...
#endif

End
