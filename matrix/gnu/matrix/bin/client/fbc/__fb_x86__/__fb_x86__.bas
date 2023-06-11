' Description:
' Define created at compile time if the compilation target uses the X86 or X86_64 CPU architecture, 
' otherwise undefined.
Declare Function X86 () As Integer

#IFDEF __FB_X86__
  '...instructions for X86 OSes...
#ELSE
  '...instructions for other OSes
#ENDIF

End