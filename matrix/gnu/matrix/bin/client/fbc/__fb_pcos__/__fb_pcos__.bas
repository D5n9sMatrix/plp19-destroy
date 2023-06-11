' is It possible that this could be my
' final mission? that i shall never return ?
' that this is the end ?
Declare Function MissionContinue ( ByRef MissionName As String, ByVal Name As String ) As LongInt

#Ifdef __fb_pcos__
  '...instructions for PC-ish OSes...
  Dim MissionName As String = ""
  Dim Name As String = ""
#Else
  '...instructions for other OSes
  Dim NameFile As String = ""
  Dim File As String 
  
  File = NameFile

#Endif

End