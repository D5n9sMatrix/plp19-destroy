' Description:
' Substituted with the quoted name of the current function block where used.

' Its normal use is to report wrong values in debugging.

' If __FUNCTION__ is used at the module level, the function name given will be 
' "__FB_MAINPROC__" for the main module, or "__FB_MODLEVELPROC__" for a different module.
Declare Function __main_proc__ () As Integer

Dim a As Integer

If a < 0 Then '' this shouldn't happen
    Print "Error: a = " & a & " in " & __FILE__ & " (" & __FUNCTION__ & ") line " 
End If

End
