/'
#UNDEF
Preprocessor directive to undefine a macro

Syntax:
#undef symbol

Description:
Undefines a symbol previously defined with #define.

Can be used to ensure that a macro or symbol has a limited lifespan and does not conflict 
with a similar macro definition that may be defined later in the source code.

(Note: #undef should not be used to undefine variable or function names used in the current function scope. 
The names are needed internally by the compiler and removing them can cause strange and unexpected results.)

'/
Declare Function UndefValue () As Double

#define Add2(a_, b_)  ((a_) + (b_))
Print Add2(1, 2)
' Macro no longer needed so get rid of it ...
#undef Add2

End