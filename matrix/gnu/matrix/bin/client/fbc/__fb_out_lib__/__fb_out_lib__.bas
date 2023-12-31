' Description:
' __FB_OUT_LIB__ indicates that the specified output file type on the compiler command 
' line at the time of compilation is a static library.

' Returns non-zero (-1) if the output is a static library. Returns zero (0) otherwise.

' Only one of __FB_OUT_DLL__, __FB_OUT_EXE__, __FB_OUT_LIB__, or __FB_OUT_OBJ__ 
' will evaluate to non-zero (-1). All others will evaluate to zero (0).
Declare Function Out_Lib () As Integer

#if __FB_OUT_LIB__
        '... specific instructions when making a static library
#else
        '... specific instructions when not making a static library
#endif

End