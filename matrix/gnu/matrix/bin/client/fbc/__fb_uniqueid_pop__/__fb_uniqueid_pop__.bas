/'
Description:
Pops an identifier off of stack identified by stack-id (the size of the stack is decreased by 1).
(__FB_UNIQUEID__ allows to get the identifier at the top of the stack, and __FB_UNIQUEID_PUSH__ allows to push a new unique identifier on to the stack)

Note:
- The "stack-id" name itself is a separate namespace from all other symbols.
- The stack can only contain "unique identifiers".
- "unique identifier" is a name of an fb symbol that is unique to the module, so does not conflict or shadow other symbol names ("unique identifier" will have the form "LT_xxxx" as a name so it might not be completely unique).
- fb uses the form "LT_xxxx" internally for labels, symbols, temp variables, etc (so should avoid naming fbc symbols of this form for any fbc program since version 0.0).

When such a stack is no longer in use, it is recommended that it be empty (at the end there must have been applied as many __FB_UNIQUEID_POP__ as __FB_UNIQUEID_PUSH__ for this stack).
At any time of its use, the number of __FB_UNIQUEID_POP__ applied from the beginning must always be less than or equal to the number of __FB_UNIQUEID_PUSH__ applied.
'/
Declare Function Uniqueid_Pop () As Integer

#macro repeat ? ( count )  '' with user named variable
    Scope
        Dim __counter__ As UInteger = count
        While( __counter__)
#endmacro

#macro end_repeat  '' with user named variable
            __counter__ -= 1
        Wend
    End Scope  
#endmacro

Print "With user named variable:"
repeat 3
    Print "   outer"
    repeat 2
        Print "   --- inner"
    end_repeat
end_repeat
Print


#undef repeat
#undef end_repeat

#macro repeat ? ( count )  '' with "unique identifier" variable
    __FB_UNIQUEID_PUSH__( ctx )
    Dim __FB_UNIQUEID__( ctx ) As UInteger = count
    While( __FB_UNIQUEID__( ctx ) )
#endmacro

#macro end_repeat  '' with "unique identifier" variable
        __FB_UNIQUEID__( ctx ) -= 1
    Wend
    __FB_UNIQUEID_POP__( ctx )
#endmacro

Print "With ""unique identifier"" variable:"
repeat 3
    Print "   outer"
    repeat 2
        Print "   --- inner"
    end_repeat
end_repeat

Sleep

/' Output:
With user named variable:
   outer
   --- inner
   --- inner
   outer
   --- inner
   --- inner
   outer
   --- inner
   --- inner

With "unique identifier" variable:
   outer
   --- inner
   --- inner
   outer
   --- inner
   --- inner
   outer
   --- inner
   --- inner
'/
End