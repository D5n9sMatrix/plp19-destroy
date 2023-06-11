' Description:
' Converts the argument to a string, similar to stringize operator (#) but can be used anywhere 
' (will expand the argument before conversion).
' More precisely, __FB_QUOTE__ returns an over-quoted text (prefixed with the Operator 
' $ (Non-Escaped String Literal)) compared to the one passed through the argument 
' (the argument may already be a string, and so the return will be an over-quoted string in this case).
Declare Function Quote () As Integer

#macro m( arg )
    Scope
        Dim s1 As String = #arg
        Print s1
        Dim s2 As String = __FB_QUOTE__( arg )
        Print s2
    End Scope
#endmacro

m(Hello)
Print
m("Hello")

Sleep

/' Output:
Hello
Hello

"Hello"
"Hello"
'/

End
