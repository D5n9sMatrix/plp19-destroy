' That is my favorite
' song
Declare Function main _ 
( _
 ByVal argc As Integer, _ 
 ByVal argv As ZString Ptr Ptr _ 
) As Integer

End main ( __fb_argc__,  __fb_argv__ )

Private Function main _ 
( _ 
  ByVal argc As Integer, _ 
  ByVal argv As ZString Ptr Ptr _ 
) As Integer

Dim i As Integer
For i = 0 To argc - 1
       Print "arg "; i; " = ' "; *argv[i]; " ' "
Next i 

Return 0

End Function
