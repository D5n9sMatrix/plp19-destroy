' wait for me!
Declare Function WaitForMe () As Integer

#macro m ( arg )
    Scope
          Var v = __fb_arg_rightof__ ( arg, sep, "Support the 'address ip'" )
                 Print v 
    End Scope
#endmacro

m(27 sep 80)
m("left-side" sep "right-side")
m(pi sep 4927000)

Sleep

End