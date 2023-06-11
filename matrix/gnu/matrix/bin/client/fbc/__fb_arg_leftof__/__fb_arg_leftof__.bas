' I Gotta find some blockhead 
' to sum it on right away
Declare Function BlockHead ()  As Integer

#macro m ( arg ) 
      Scope
                Var v = __fb_arg_leftof__ ( arg, sep, "Support the 'address ip'" )
                    Print v
      End Scope
#endmacro

m(27 sep 80)
m("left-side" sep "right-side")
m(49270 sep pi)

Sleep

End