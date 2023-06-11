/'
#MACRO...#ENDMACRO
Preprocessor directive to define a multiline macro

Syntax:
#macro identifier [?] ( [ parameters ] )
body
#endmacro

#macro identifier [?] ( [ parameters, ] variadic_parameter... )
body
#endmacro

Description:
#macro is the multi-line version of #define.

If using the optional question mark (?) after the identifier in the definition syntax, 
macros with parameters can be invoked without using parentheses around the arguments.
Note: Beware of the possibility of triggering so a conflict with expressions containing 
the name of the macro as one of their terms.

Note: Unlike the function-like #define declaration, spaces can be put between the macro name 
and the opening parenthesis for any declaration syntax of macro.

WARNING: In the macro body, it may be mandatory to have to surround by parentheses any 
used parameter if it is inside an expression with one operator at least, in order to not undergo 
an unwanted precedence change of operators (if passing as argument an expression with also operators).

'/
Declare Function MacroExpr () As Double

' macro as an expression value

#macro Print1( a, b )
    a + b
#endmacro

Print Print1( "Hello ", "World!" )

/' Output :
Hello World!
'/

End
