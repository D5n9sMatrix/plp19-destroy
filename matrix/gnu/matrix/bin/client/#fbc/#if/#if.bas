/'
Preprocessor conditional directive

Syntax:
#if (expression)
' Conditionally included statements
#endif

Description:
Conditionally includes statements at compile time.

Statements contained within the #if / #endif block are included if expression evaluates to True (non-zero) and excluded (ignored) 
if expression evaluates to False (0).

This conditional directive differs from the If conditional statement in that #if is evaluated at compile-time and If is evaluated at run-time.
'/
Declare Function IfExpr () As Double

#define  Debugging_Level 1
#if (Debugging_Level = 1)
      ' statment ...
      Print "Start application"
#endif

End