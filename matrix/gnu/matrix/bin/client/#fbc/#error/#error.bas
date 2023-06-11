/'
#ERROR
Preprocessor diagnostic directive

Syntax:
#error error_text

Parameters:
error_text
The display message

Description:
#error interrupts compiling to display error_text when compiler finds it, and then parsing continues.

This keyword must be surrounded by an #if <condition> ...#endif, so the compiler can reach #error only if <condition> is met.

In any case, the final status will be "Failed to compile".
'/
Declare Function ErrorExpr () As Double

#define c 1
#if c = 1
      #print Band value of c 1
#endif

End



