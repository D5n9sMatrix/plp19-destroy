/'
Description:
Pushes a new unique identifier on to a stack identified by stack-id (the size of the stack is increased by 1).
(__FB_UNIQUEID__ allows to get the identifier at the top of the stack, and __FB_UNIQUEID_POP__ allows to pop an identifier off of the stack)

Note:
- The "stack-id" name itself is a separate namespace from all other symbols.
- The stack can only contain "unique identifiers".
- "unique identifier" is a name of an fb symbol that is unique to the module, so does not conflict or shadow other symbol names ("unique identifier" will have the form "LT_xxxx" as a name so it might not be completely unique).
- fb uses the form "LT_xxxx" internally for labels, symbols, temp variables, etc (so should avoid naming fbc symbols of this form for any fbc program since version 0.0).

When such a stack is no longer in use, it is recommended that it be empty (at the end there must have been applied as many __FB_UNIQUEID_POP__ as __FB_UNIQUEID_PUSH__ for this stack).
At any time of its use, the number of __FB_UNIQUEID_POP__ applied from the beginning must always be less than or equal to the number of __FB_UNIQUEID_PUSH__ applied.

'/
Declare Function Pushes () As Integer

' As the "unique identifiers" (used as jump labels) are successively pushed on to a stack,
' the jump-code bodies must be defined in the reversed order than the jump calls.

#macro go
    __FB_UNIQUEID_PUSH__( stk )
    Goto __FB_UNIQUEID__( stk )
    End If
#endmacro

#macro end_go
    __FB_UNIQUEID__( stk ):
    __FB_UNIQUEID_POP__( stk )
#endmacro
   
Dim As Integer N

Do
    Input "Enter a value between 1 and 4 (0 or empty input for exit) ? ", N
   
    If N = 0 Then go
    If N = 1 Then go
    If N = 2 Then go
    If N = 3 Then go
    If N = 4 Then go
    Continue Do
   
    end_go
        Print "You entered 4" : Continue Do
    end_go
        Print "You entered 3" : Continue Do
    end_go
        Print "You entered 2" : Continue Do
    end_go
        Print "You entered 1" : Continue Do
    end_go
        Print "End"           : Exit Do
Loop

Sleep

End