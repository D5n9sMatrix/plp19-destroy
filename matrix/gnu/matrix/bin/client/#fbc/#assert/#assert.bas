/'
#ASSERT
Preprocessor conditional directive

Syntax:
#assert condition

Parameters:
condition
A conditional expression that is assumed to be true

Description:
Asserts the truth of a conditional expression at compile time. If condition is false, compilation will stop with an error.

This statement differs from the ASSERT macro in that #assert is evaluated at compile-time and ASSERT is evaluated at run-time.
'/
Declare Function Asserts () As Double

Const Min = 5, Max = 10
#assert Max > Min '' cause a compile-time error if Max <= Min

End

