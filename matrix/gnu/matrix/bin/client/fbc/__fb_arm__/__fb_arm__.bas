' quiet, peanuts
' can you hear it ?
Declare Function YesArm ( ) As Integer

#Ifdef __fb_arm__
     ' ... instructions for arm OSes...
#Else
     ' ... instructions for other OSes
#Endif

End