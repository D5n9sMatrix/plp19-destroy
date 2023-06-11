 Declare Function PragmaReserve () As Double

Dim As Integer myName1
Print myName1

Scope
 Dim As Integer myName2
 Print myName2
End Scope

Dim As Integer myName11
Print myName11
Dim Shared As Integer myName12
Print myName12

Namespace N
 Dim As Integer myName3
 Dim As Integer myName13
 Sub myName4()
 End Sub
 Sub myName14()
 End Sub
End Namespace
Print N.myName3
Print N.myName13
N.myName4()
N.myName14()

Sub myName5()
End Sub
myName5()

Sub myName15()
End Sub
myName15()

End
