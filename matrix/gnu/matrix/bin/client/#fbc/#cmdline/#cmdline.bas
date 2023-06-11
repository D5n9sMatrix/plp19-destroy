/'
#CMDLINE
Preprocessor directive

Syntax:
#cmdline "args..."

Parameters:
args...
argument list (separated by spaces) of valid Compiler Options except -print and also generic option -help.

Description:
#cmdline is a pre-processor directive that allows specifying compiler options from inside the first specified fb source file. 
The first source file is the first specified '.bas' file given on the shell or IDE command line invoking the fbc compiler. 
#cmdline directives specified in the first source file affect all source files subsequently compiled. #cmdline directives 
inside source files other than the first source file are ignored.

#cmdline is only allowed at module scope and can be conditionally processed with #if pre-processor statements. 
#cmdline statements must appear before any declarative or executable statements. Any #cmdline statements after 
the first declarative or executable statement are ignored.

#cmdline directives are processed on the first pass of the the first '.bas' source file when they appear in the source file. 
If an invalid command line option is given in the #cmdline statment, compilation immediately aborts. #cmdline directives 
are ignored on the second pass of the source file even if a conditional #if would add something different on the second pass.

At first fbc initializes as usual and begins parsing the fb source code using the options given from the shell or IDE's 
fbc ... command line. As #cmdline directives are processed, they are merged into the current compiler configuration. 
Depending on the command line options encountered, fbc can continue parsing, restart the parser, or restart fbc 
(for example: no restart after #cmdline "-mt", restart the parser after #cmdline "-gen gcc", 
restart the build after #cmdline "-target win64").

fbc has no clever way to detect when all the #cmdline directives in source have been processed, so there are 2 pseudo 
command line options to instruct fbc what to next if it is necessary:
#cmdline "-end"
option to restart parser or build if needed.
#cmdline "-restart"
option to always restart build.
If neither #cmdline "-end" nor #cmdline "-restart" were encountered, fbc continues processing to the end of the first source 
file and restarts only if necessary.

Adding -z nocmdline in the shell/IDE command line option ignores #cmdline directives completely in source and allows user 
to override all source directives using the shell/IDE fbc compiler command line only.

Adding -w all on the shell/IDE command line option allows to get warnings about ignored #cmdline directives.
'/
Declare Function IDE () As Double

Print  "__fb_optimize__"

Sleep

End

