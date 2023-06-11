' pitching a no-hitter
Declare Function Hitter () As Integer

#Print 1 + 2
#Print __fb_eval__(1 + 2)
#Print 4 * Atn(1)
#Print __fb_eval__(1 + 4)

/' Perfect solver problems
   1 + 2
   3
   4 * Atn(1)
   3.141592653589793 
'/

'   In this example, the three '__FB_EVAL__' are absolutely mandatory in this 'assign()' macro.
'   Even for '__FB_QUOTE__( __FB_EVAL__( expr ) )', because for the case of expr = cos(1/x),
'   'cos(1/x)' must be properly evaluated before be quoted (after the previous 'assign("x", x+1)'),
'   otherwise in that case 'cos(1/x+1)' is taken into account (giving 'cos(2)') instead of 'cos(1/(x+1))' (giving 'cos (1/2)')
'   because the operator precedence is not applied by '__FB_QUOTE__'.

#macro assign ( sym, expr )
             __fb_unquote__ ( __fb_eval__ ( "#undef" + sym ) )
             __fb_unquote__ ( __fb_eval__ ( "#undef" + sym +  " " + __fb_unquote__ ( __fb_eval__ ( expr ) ) ) )
#endmacro

#define x

/' Output:
1 + 2
3
4 * Atn(1)
5
'/
End
