' Description:
' Define created at compile time if the OS is reasonably enough like UNIX that you can call it UNIX, otherwise undefined.
Declare Function Unix () As Integer

#IFDEF __FB_UNIX__
  '...instructions for UNIX-family OSes...
#ELSE
  '...instructions for other OSes
#ENDIF

End
