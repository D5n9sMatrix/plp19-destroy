' peanuts music goes rounds start lucy van pelt
' AAUGH!!
' I can't stand it ! this stupid sound is
' driving me crazy!!
Declare Function StupidSound() As LongInt

#macro m( args... )
    Print __fb_arg_count__( args )
#endmacro

m()
m(a)
m(b,c)
m(,d)
m(,e,)
m(,,,)

Sleep
End