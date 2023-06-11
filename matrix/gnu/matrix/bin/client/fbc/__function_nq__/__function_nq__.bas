' Description:
' Substituted with the non-quoted name of the current function block where used.

' If __FUNCTION_NQ__ is used at the module level, the function name given will 
' be __FB_MAINPROC__ for the main module, or __FB_MODLEVELPROC__ for 
' a different module. This is not the actual function name though, so it's not as useful there.
Declare Function __main_proc__ () As Integer

Sub MySub
  Print "Address of " + __FUNCTION__ + " is ";
  Print Hex( @__FUNCTION_NQ__ )
End Sub

MySub

End