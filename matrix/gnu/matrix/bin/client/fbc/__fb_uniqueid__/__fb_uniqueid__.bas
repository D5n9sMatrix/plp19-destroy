/'
Description:
 Gets the identifier at the top of stack identified by stack-id (the size of the stack is not modified).
 (__FB_UNIQUEID_PUSH__ allows to push a new unique identifier on to the stack, and __FB_UNIQUEID_POP__ allows to pop an identifier off of the stack)

 Note:
- The 'stack-id' name itself is a separate namespace from all other symbols.
- The stack can only contain 'unique identifiers'.
- 'unique identifier' is a name of an fb symbol that is unique to the module, so does not conflict or shadow other symbol names ('unique identifier' will have the form 'LT_xxxx' as a name so it might not be completely unique).
- fb uses the form 'LT_xxxx' internally for labels, symbols, temp variables, etc (so should avoid naming fbc symbols of this form for any fbc program since version 0.0).

__FB_UNIQUEID__ simply expands to unquoted text. So the name, for example 'Lt_0004', can be used wherever an fb symbol is required (a variable, procedure name, type name, etc.).
__FB_UNIQUEID__ returns an unquoted empty string when the stack is empty or has never been filled.
'/ 
Declare Function Uniqueid() As Integer

__FB_UNIQUEID_PUSH__( stk )
#print __FB_UNIQUEID__( stk )

    __FB_UNIQUEID_PUSH__( stk )
    #print __FB_UNIQUEID__( stk )

        __FB_UNIQUEID_PUSH__( stk )
        #print __FB_UNIQUEID__( stk )
        __FB_UNIQUEID_POP__( stk )

    #print __FB_UNIQUEID__( stk )
    __FB_UNIQUEID_POP__( stk )

#print __FB_UNIQUEID__( stk )
__FB_UNIQUEID_POP__( stk )

/' Compiler output example:
Lt_0006
Lt_0007
Lt_0008
Lt_0007
Lt_0006
'/

End

