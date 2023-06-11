/'
#ELSEIF
Preprocessor conditional directive

Syntax:
#if (expression1)
' Conditionally included statements if expression1 is True
#elseif (expression2)
' Conditionally included statements if expression2 is True
#else
' Conditionally included statements if both
' expression1 and expression2 are False
#endif

Description:
#elseif can be added to an #if block to provide an additional conditions.
'/
Declare Function ElseIfExpr () As Double

#define wordsize 13
#if (wordsize = 13)
     ' wordsize make size fonts 
#elseif (wordsize = 13)
     ' wordsize make size fonts
#else
    #print wordsize must be set To 13 or 13
#endif           

End
