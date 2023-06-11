' Forget It
Declare Function ForgetIs (  ) As Integer

#Ifdef __fb_xbox__
  '...instructions only for Xbox...
  Type __xbox__
          Dim TableBox As Integer = 0
          Dim ItemBox As Integer
 End Type         
#Else
  '...instructions not for Xbox...
  Dim XboxSource As Integer = 0
  Dim Source As Integer

  Source = XboxSource

#Endif

End