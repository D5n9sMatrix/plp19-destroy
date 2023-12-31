/'
#LIBPATH
Preprocessor statement to add a search path for libraries

Syntax:
#libpath "path"

Description:
Adds a library search path to the linker's list of search paths as if it had been specified on the command line with the '-p' option.

Paths are relative to the working directory where fbc was invoked and not relative to the directory of the source file.

No error is generated if the path does not exist and compilation and linking will continue.
'/
Declare Function LibPath () As Double

' Descriptor  
#libpath "lib"

End