/'
Description:
Takes a literal string and converts it back to tokens.
More precisely, __FB_UNQUOTE__ returns a sub-quoted text compared to the one passed through 
the argument (the argument may already be an over-quoted string, and so the return will be a simple string in this case).
'/
Declare Function Unquote () As Integer

#macro m( arg )
    Scope
        Var v1 = arg
        #print TypeOf(v1)
        Print v1
        Var v2 = __FB_UNQUOTE__( arg )
        #print TypeOf(v2)
        Print v2
    End Scope
#endmacro

m("""Hello""")
m("1")

Sleep

/' Compiler output:
String
String
String
Integer
'/

/' Output:
"Hello"
Hello
1
 1
'/
End