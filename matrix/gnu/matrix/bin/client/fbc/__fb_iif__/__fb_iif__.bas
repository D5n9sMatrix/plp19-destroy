' notion logical method used to facility the motion terminal
' to console utilized with freebasic logical method utility
' about the expression
Declare Function DiffExpr () As Integer

#if __fb_iif__ 
' From the example of the '#ELSE' documentation page:
    '#DEFINE MODULE_VERSION 1
    'Dim a As String
    '#IF (MODULE_VERSION > 0)
    '    a = "Release"
    '#ELSE
    '    a = "Beta"
    '#ENDIF
    'Print "Program is "; a

' Simpler code using '__FB_IIF__':
#define module_version 1
Dim a As String
a = __fb_iif__ ( module_version > 0, "Release", "Beta" )
Print "Program is :  "; a 
#else
    ' ... instructions program a
#endif

End
