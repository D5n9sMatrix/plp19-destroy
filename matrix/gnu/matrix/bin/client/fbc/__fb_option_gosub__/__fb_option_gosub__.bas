' Description:
' Indicates how Gosub and Return will be handled at compile time. If the option is set (-1) then Gosub is allowed 
' and Return is recognized as return-from-gosub only. If the option is not set (0) then Gosub is not allowed and 
' Return is recognized as return-from-procedure only.

' This macro value can be changed at compile time. Option Gosub will set the option (enable gosub support) 
' and Option Nogosub will clear the option (disable gosub support).

' __FB_OPTION_GOSUB__ returns zero (0) if the option has not been set. Returns non-zero (-1) 
' if the option has been set.
Declare Function Option_GoSub () As Integer

#if( __FB_OPTION_GOSUB__ <> 0 )
    '' turn off gosub support
    Option nogosub
#endif

End
