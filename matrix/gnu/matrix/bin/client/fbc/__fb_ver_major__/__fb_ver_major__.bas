' Description:
' __FB_VER_MAJOR__ will return the major version of FreeBASIC currently being used. For example, 
' the major version is 0 for FreeBASIC 0.90, and will remain 0 until FreeBASIC version 1.0 is released.
Declare Function Ver_Major () As Integer

Dim fbMajorVersion As Integer
Dim fbMinorVersion As Integer
Dim fbPatchVersion As Integer

fbMajorVersion = __FB_VER_MAJOR__
fbMinorVersion = __FB_VER_MINOR__
fbPatchVersion = __FB_VER_PATCH__

Print "Welcome to FreeBASIC " & fbMajorVersion & "." & fbMinorVersion & "." & fbPatchVersion

End