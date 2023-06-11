' Description:
' Defined as the vectorisation level number set by the -vec command-line option.
Declare Function Vectorisation () As Integer

#if __FB_VECTORIZE__ = 2
  ' ... instructions only for vectorization level 2...
#else
  ' ...
#endif

End