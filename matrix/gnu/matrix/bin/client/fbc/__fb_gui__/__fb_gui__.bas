' notion of documentation console gui window wxt guides
' form utilized method to reference guides wxt 
' console gui wxt
Declare Function ConsoleGuiWxtGuides () As Integer

#if __fb_gui__ <> 0
        #print ConsoleGuiWxtGuides subsystem: gui
#else
        #print ConsoleGuiWxtGuides subsystem: console
#endif

End
