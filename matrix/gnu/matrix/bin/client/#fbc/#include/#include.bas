/'
#INCLUDE
Preprocessor statement to include contents of another source file

Syntax:
#include [once] "file"

Description:
#include inserts source code from another file at the point where the #include directive appears. 
This has the effect of compiling the source code from the include file as though it were part of 
the source file that includes it. Once the compiler has reached the end of the include file, the 
original source file continues to be compiled.

This is useful to remove code from a file and separate it into more files. It is useful to have a single 
file with declarations in a program formed by several modules. You may include files within an include 
file, although avoid including the original file into itself, this will not produce valid results. Typically, 
include files will have an extension of .bi and are mainly used for declaring subs/functions/variables 
of a library, but any valid source code may be present in an include file.

The once specifier tells the compiler to include the file only once even if it is included several times by the source code.

$Include is an alternative form of include, existing only for compatibility with QuickBASIC. It is recommended to use #include instead.

The compiler will automatically convert path separator characters ( / and \ ) as needed to properly load the file. The filename name may be an absolute or relative path.

For relative paths, or where no path is given at all, the include file is search for in the following order:
Relative from the directory of the source file
Relative from the current working directory
Relative from addition directories specified with the -i command line option
The include folder of the FreeBASIC installation (FreeBASIC\inc, where FreeBASIC is the folder where the fbc executable is located)
'/
Declare Function IncludeExpr () As Double

' include  
Type FootType
         Bar As Byte
         Bardeque As Byte
End Type

End
