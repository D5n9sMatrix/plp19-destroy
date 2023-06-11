' Description:
' Substituted with the quoted source file name where used.

' An example of normal use is to report wrong values in debugging.
Declare Function File () As Integer

Dim a As Integer
If a<0 Then
    Print "Error: a = " & a & " in " & __FILE__ & " (" & __FUNCTION__ & ") line " 
End If
End


