/'
#DEFINE
Preprocessor directive to define a macro

Syntax:
#define identifier body
#define identifier( [ parameters ] ) body
#define identifier( [ parameters, ] variadic_parameter... ) body

Description:
#define allows to declare text-based preprocessor macros. Once the compiler has seen a #define, 
it will start replacing further occurrences of identifier with body. body may be empty. The expansion is done recursively, 
until there is nothing more to expand and the compiler can continue analyzing the resulting code. #undef can be used to 
make the compiler forget about a #define.

Parameters turn a define into a function-like macro, allowing text arguments to be passed to the macro. Any occurrences 
of the parameter names in the body will be replaced by the given argument text during expansion.
If a literal is passed to a macro, the name of the corresponding parameter in the macro body can not be used as a local variable 
as in a procedure body. To emulate the same functioning as for a procedure, the user must then explicitly declare a local 
variable (with another name) in the body of the macro and initialize it with the passed parameter name (replaced at preprocessing 
by the literal passed).

The # stringize operator can be used on macro parameters to turn them into string literals, and the ## concatenate operator 
can be used to merge tokens together.

Note: In the function-like #define declaration, the identifier should be followed by the opening parentheses (() immediately 
without any white-space in between, otherwise the compiler will treat it as part of the body.

Defines are scoped; they are only visible in the scope they were defined in. If defined at module level, the define is visible 
throughout the module. If the identifier is defined inside a compound statement having scope (Sub, For..Next, 
While..Wend, Do..Loop, Scope..End Scope, etc), the identifier define is only visible within that scope. 
Namespaces on the other hand do not have any effect on the visibility of a define.

Identifiers can be checked for with #ifdef and others, which can be used to hide parts of code from 
the compiler (conditional compiling).

The result of macro expansion can be checked by using the -pp compiler option.

#defines are often used to declare constants. The Const statement is a type-safe alternative.

WARNING: When the define body contains an expression with one operator at least, it may be mandatory 
to have to surround some terms (parameters, whole body) by parentheses in order to not undergo an unwanted 
precedence change of operators (if passing as argument an expression with also operators, or if using the define 
in a main expression with also operators).

'/
Declare Function Checked () As Double

'' define the checked
#define Debugging #cmdline "-restart|-end"
#ifdef Debugging
     ' ... statements
#endif

'' Simple definition/text replacement
#define false 0
#define true (not false)

'' Function-like definition
#define MyRGB(R,G,B) (((R)Shl 16)  Or ((G)Shl 8) Or (B))
Print Hex( MyRGB(&hff, &h00, &hff) )

'' Line continuation and statements in a definition
#define printval(bar) _
    Print #bar; " ="; bar

'' #defines are visible only in the scope where they are defined
Scope
    #define localdef 1
End Scope

#ifndef localdef
#   Print localdef Is Not defined
#endif

'' namespaces have no effect on the visibility of a define
Namespace foo
#   define nsdef 
End Namespace

#ifdef nsdef
#   Print nsdef Is defined
#endif
