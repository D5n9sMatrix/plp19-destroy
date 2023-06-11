/'
#IFNDEF
Preprocessor conditional directive

Syntax:
#ifndef symbol
' Conditionally included statements
#endif

Description:
Conditionally includes statements at compile time.

Statements within the #ifndef...#endif block are included if symbol is not defined and excluded (ignored) if symbol is defined.

#ifndef symbol is equivalent to #if Not defined(symbol)

'/
Declare Function IfnDefExpr () As Double

#ifndef __MyFile_By__
#define __MyFile_By__
  ' Declaration 
#endif

End

