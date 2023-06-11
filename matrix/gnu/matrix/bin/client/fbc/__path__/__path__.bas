' Description:
' Set to the quoted absolute path of the source file at the time of compilation.
Declare Function Path () As Integer

' Tell the compiler to seach the source file's
' directory for libraries

#libpath __PATH__

End