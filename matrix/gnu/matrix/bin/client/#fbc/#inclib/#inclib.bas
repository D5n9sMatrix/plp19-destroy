/'
#INCLIB
Preprocessor directive

Syntax:
#inclib "libname"

Description:
Includes a library in the linking process as if the user specified -l libname on the command line.
'/
Declare Function Inclib () As Double

'' make repository inc lib
#inclib "#include"

End
