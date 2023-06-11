' Description:
' Define created at compile time if the compilation target uses the 
' PowerPC CPU architecture, otherwise undefined.
Declare Function PowerPC () As Integer

#ifdef __fb_ppc__
  '...instructions for PowerPC OSes...
#else
  '...instructions for other OSes
#endif

End

