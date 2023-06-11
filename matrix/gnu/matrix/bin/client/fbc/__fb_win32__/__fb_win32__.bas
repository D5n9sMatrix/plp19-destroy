' what an emotional moment
' throats tighten and tears well
' in our eyes
Declare Function EyesPerfectVista ( ByRef EyesPerfect As Integer, ByVal EyesPerfectView As Integer) As LongInt

#Ifdef __fb_win64__
       Dim EyesPerfect As Integer
       Dim EyesView As Integer
       Dim EyesGood As Integer

       EyesPerfect = EyesView, EyesView
       EyesView = EyesGood
#Else
   Dim EyesPerfectView As Integer
   Dim EyesPerfectGood As Integer
  
    EyesPerfectView = EyesPerfectGood
#Endif

End

