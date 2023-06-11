' Description:
' Substituted by the version number of the compiler where used.
Declare Function Version () As Integer

#if __FB_VERSION__ < "0.18"
#error  Please compile With FB version 0.18 Or above
#endif

End
