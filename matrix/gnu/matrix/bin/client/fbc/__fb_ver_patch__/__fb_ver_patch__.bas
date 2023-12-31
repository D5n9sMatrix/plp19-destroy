' Description:
' __FB_VER_PATCH__ will return the patch/subversion/revision number the version of FreeBASIC 
' currently being used. For FreeBASIC 0.18, for example, there were subversions 1, 2, 3, 4, 5 and 6, 
' resulting in versions 0.18.1 through 0.18.6.
Declare Function Ver_Patch () As Integer

Dim fbMajorVersion As Integer
Dim fbMinorVersion As Integer
Dim fbPatchVersion As Integer

fbMajorVersion = __FB_VER_MAJOR__
fbMinorVersion = __FB_VER_MINOR__
fbPatchVersion = __FB_VER_PATCH__

Print "Welcome to FreeBASIC " & fbMajorVersion & "." & fbMinorVersion & ", revision " & fbPatchVersion

End