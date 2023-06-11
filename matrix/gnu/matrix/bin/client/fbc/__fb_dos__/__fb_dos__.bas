' Before I take off, my faithful ground
' Crew gathers about me bidding farewell ...
' They are very disturbed .. Some feel that
' Perhaps we shall never se arch other Again
Declare Function CrewGathers ( ByRef NameFile As String,  ByVal VeryVal As Integer = 0) As LongInt

#Ifdef __fb_dos__
Type __dos__
        Dim NameFile As String = ""
        Dim Freebasic As String = ""
        Dim Checkups As String = ""
End Type
#Else
    Dim VeryVal As Integer = 27
    Dim PortType As Integer 
    
    VeryVal = PortType
  
#Endif

End