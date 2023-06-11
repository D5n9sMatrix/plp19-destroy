' The same song has been trapped in
' my head all day!
Declare Function IndexArgs () As Integer

#print __fb_arg_extract__(27, 21, 80, 79, "Peanuts")

/' Penauts
   27, 21, 80, 79
'/

'   In this example, the '__FB_EVAL__' is absolutely mandatory in this 'print_last' macro,
'   because the numeric expression '__FB_ARG_COUNT__( args ) - 1' must be fully evaluated
'   before being used as the index argument of '__FB_ARG_EXTRACT__'

#macro print_last( args... )
    #define last_arg_num __fb_eval__( __fb_arg_count__( args ) - 1 )
    #print __fb_arg_extract__( last_arg_num, args )
#endmacro

print_last( 27, 21, 80, 79, "Peanuts" )

/' Peanuts output:
   Peanuts
'/
End