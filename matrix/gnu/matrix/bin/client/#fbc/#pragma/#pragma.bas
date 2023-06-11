/'
#PRAGMA
Preprocessor directive

Syntax:
#pragma option [ = value ]
Or
#pragma push ( option [, value ] )
Or
#pragma pop ( option )

Parameters:
Possible values for option and related values:

Option	Value	Description
msbitfields	false	Use bitfields compatible with gcc (default)
msbitfields	true	Use bitfields compatible with those used in Microsoft C compilers
once	N/A	cause the source file in which the pragma ppears to behave as though it was included with #include once ...
constness	false	disable 'CONST qualifier discarded' warning in current source
constness	true	enable 'CONST qualifier discarded' warning in current source
lookup108	false	use normal symbol lookups for unqualified symbol names
lookup108	true	use fbc-1.08.x or earlier symbol lookups for unqualified symbol names

If value is not given, the compiler assumes True (-1). A zero (0) value may be used in place of False. A non-zero (for example, -1) value may be used in place of True.

Description:
Allows the setting of compiler options inside the source code.

Push saves the current value of the option onto a stack, then assigns the new value (or True) to it. Pop restores the option to its previous value, and removes it from the stack. This mechanism allows options to be changed for a certain part of source code, regardless of the setting used by the context, which is especially useful inside #include header files.

constness pragma is added for testing fbc compiler. It will be removed in future at should not be relied upon.
'/
Declare Function  PragmaValue () As Double

'' MSVC-compatible bitfields: save the current setting and then enable them
#pragma push(msbitfields)

'' do something that requires MS-compatible bitfields here

'' restore original setting
#pragma pop(msbitfields)


End
