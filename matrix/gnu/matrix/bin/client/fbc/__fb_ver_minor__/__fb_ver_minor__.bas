' Description:
' __FB_VER_MINOR__ will return the minor version of FreeBASIC currently being used. 
' For FreeBASIC version 0.90.1, for example, the minor version number is 90.
Declare Function Ver_Minor () As Integer

Dim fbMajorVersion As Integer
Dim fbMinorVersion As Integer
Dim fbPatchVersion As Integer

fbMajorVersion = __FB_VER_MAJOR__
fbMinorVersion = __FB_VER_MINOR__
fbPatchVersion = __FB_VER_PATCH__

Print "Welcome to FreeBASIC " & fbMajorVersion & "." & fbMinorVersion & "." & fbPatchVersion

End
