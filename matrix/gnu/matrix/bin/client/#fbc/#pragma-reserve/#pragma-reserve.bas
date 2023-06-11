/'
#PRAGMA RESERVE
Preprocessor directive

Syntax:
#pragma reserve symbol
or
#pragma reserve (extern) symbol
or
#pragma reserve (asm) symbol
or
#pragma reserve (asm, extern) symbol) or #pragma reserve (extern, asm) symbol)

Parameters:
symbol
symbol name to reserve.

Description:
#pragma reserved statements are preprocessor directives that allow user to reserve symbol names 
by accessing to the internal symbol tables of the fbc compiler:
- #pragma reserve symbol
statement will reserve a symbol name in the current scope / namespace and generate an error if the 
symbol is redefined or used in an expression.
- #pragma reserve (extern) symbol
statement will reserve a global symbol name and generate a warning if the reserved symbol is used for 
a module level procedure or shared variable in the global namespace.
- #pragma reserve (asm) symbol
statement will reserve an ASM symbol name in all ASM statements and blocks.
- #pragma reserve (asm, extern) symbol) or #pragma reserve (extern, asm) symbol)
Do both previous statements: this combined statement will reserve a global ASM symbol name 
and generate a warning if the reserved symbol is used for a module level procedure or shared variable 
in the global namespace.

The primary objective with the two first syntaxes is to create a mechanism to help deal with some symbols 
causing compile errors or run-time crashes.
Some symbol names in fbc compiler are emitted as-is to the backend compilers (gcc, as, etc) where the 
symbol name is a reserved keyword by the backend compiler.
There are typically two outcomes:
- compilation error in the backend,
- bad code generation in the backend (successful compile and unexpected run time crashes).
Using #pragma reserve symbol statement allows the fbc compiler to output an error message dedicated 
to the illegal use of this symbol name in the current scope / namespace.
Using #pragma reserve (extern) symbol statement allows the fbc compiler to output a warning message dedicated 
to the illegal use of this symbol name for a module level procedure or shared variable in the global namespace.

A closely related secondary objective with the third and forth syntax is ASM words used in ASM blocks and statements.
This allows to add new ASM instruction name in the fbc ASM keywords list (so not yet implicitly reserved by fbc).
Therefore, using #pragma reserve (asm) symbol or #pragma reserve (asm, extern) symbol or any 
#pragma reserve (extern, asm) symbol statement allows the fbc compiler to always emit an undecorated 
ASM instruction symbol name to the backend compiler.

Note: #pragma reserve (extern) and #pragma reserve (asm) (and any combined syntax) throw an error if used 
in any scope block or procedure.

Examples:
Example (for the mechanism only) to prohibit/warn the definition/use of a symbol name:
'/
Declare Function PragmaReserve () As Double

Dim As Integer myName1             '' error: Duplicated definition, myName1 in 'Dim As Integer myName1 ...
Print myName1                      '' error: Illegal use of reserved symbol, found 'myName1' in 'Print myName1 ...

Scope
    Dim As Integer myName2         '' OK
    Print myName2                  '' OK
End Scope

Dim As Integer myName11            '' OK
Print myName11                     '' OK
Dim Shared As Integer myName12     '' warning: Use of reserved global or backend symbol, myName12
Print myName12                     '' OK

Namespace N
    Dim As Integer myName3         '' OK
    Dim As Integer myName13        '' OK
    Sub myName4()                  '' OK
    End Sub
    Sub myName14()                 '' OK
    End Sub
End Namespace
Print N.myName3                    '' OK
Print N.myName13                   '' OK
N.myName4()                        '' OK
N.myName14()                       '' OK

Sub myName5()                      '' error: Duplicated definition, before ''' in 'Sub myName4() ...
End Sub
myName5()                          '' error: Illegal use of reserved symbol, found 'myName4' in 'myName4() ...

Sub myName15()                     '' warning: Use of reserved global or backend symbol, myName14
End Sub
myName15()   

End
