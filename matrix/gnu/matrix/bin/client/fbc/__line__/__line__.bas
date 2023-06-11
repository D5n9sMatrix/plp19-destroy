' Description:
' Substituted with the current line number of the source file where used.

' Its normal use is to report wrong values in debugging.
Declare Function report_line () As Integer

Dim a As Integer

If a < 0 Then
    Print "Error: a = " & a & " in " & __FILE__ & " (" & __FUNCTION__ & ") line "
End If

End