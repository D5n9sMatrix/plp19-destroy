/'
#ELSE
Preprocessor conditional directive

Syntax:
#if (expression)
' Conditionally included statements if expression is True
#else
' Conditionally included statements if expression is False
#endif

Description:
#else can be added to an #if, #ifdef, or #ifndef block to provide an alternate result to the conditional expression.
'/
Declare Function ElseExpr () As Double

#define module_version 2
Dim a As String
#if (module_version > 0)
      a = "release"
#else
     a = "beta"
#endif 

Print "Program is", a 

End

      
