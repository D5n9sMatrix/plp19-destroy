/'
#LINE
Preprocessor directive to set the current line number and file name

Syntax:
#line number [ "name" ]

Parameters:
number
new line number
"name"
new file name (optional)

Description:
Informs the compiler of a change in line number and file name and updates the __FILE__ and __LINE__ 
macro values accordingly.

Both compile time messages and run-time messages are affected by this directive.

This directive allows other programs to generate source code for the FreeBASIC compiler and have 
it return warning and/or error messages that refer to the original source used by the other program.

'/
Declare Function LineExpr () As Double

#line 10 "outside.src"

End
