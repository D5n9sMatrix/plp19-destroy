/'
#IFDEF
Preprocessor conditional directive

Syntax:
#ifdef symbol
' Conditionally included statements
#endif

Description:
Conditionally includes statements at compile time.

Statements within the #ifdef...#endif block are included if symbol is defined and excluded (ignored) if symbol is not defined.

#ifdef symbol is equivalent to #if defined (symbol)
'/
Declare Function IfDefExpr () As Double

#define _Debug_Level 1
#ifdef _Debug_Level 
        ' statements logic 
#endif

End 
     



