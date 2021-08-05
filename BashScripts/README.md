# BashScripts
These are scripts written by me.
-------

Specail variables used in bash
$#	- Number of command-line arguments.
$_	- The underscore variable is set at shell startup and contains the absolute file name of the shell or script being executed as passed in the argument list. Subsequently, it         expands to the last argument to the previous command, after expansion. It is also set to the full pathname of each command executed and placed in the environment exported to       that command. When checking mail, this parameter holds the name of the mail file.
$-	- A hyphen expands to the current option flags as specified upon invocation, by the set built-in command, or those set by the shell itself (such as the -i).
$?	- Exit value of last executed command.
$$	  - Process number of the shell.
$!	- Process number of last background command.
$0	- First word; that is, the command name. This will have the full pathname if it was found via a PATH search.
$n	- Individual arguments on command line (positional parameters). The Bourne shell allows only nine parameters to be referenced directly (n = 1–9); Bash allows n to be greater         than 9 if specified as ${n}.
$*, $@	- All arguments on command line ($1 $2 …).
“$*”	- All arguments on command line as one string (“$1 $2…”). The values are separated by the first character in $IFS.
“$@”	- All arguments on command line, individually quoted (“$1” “$2” …).
