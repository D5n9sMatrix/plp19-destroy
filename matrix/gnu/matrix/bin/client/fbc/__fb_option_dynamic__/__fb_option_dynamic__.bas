' Description:
' __FB_OPTION_DYNAMIC__ is defined as true (negative one (-1)) if a recent Option Dynamic statement 
' or '$Dynamic meta-command was issued. Otherwise, it is defined as zero (0).
Declare Function Option_Dynamic () As Integer

#if __FB_OPTION_DYNAMIC__ <> 0
#error This module must Not use Option Dynamic
#endif

End