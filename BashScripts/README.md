# BashScripts
These are scripts written by me.
-------
#!/bin/sh -e < to check errors in script , it fails on the 1st error

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

!!  -  Repeat the last command


Declare

The declare command works with the following general options:

Option	Description

-f	Declare a bash function, not a variable.

-F	Display the function's name and attributes.

-g	Apply the global scope to all the variable operations inside a shell function. The option does not work outside shell functions.

-p	Display options and attributes of variables.

The options in the table below are used to set an attribute to a variable.

Option	Description

-a	The variable is an indexed array. You cannot unset this attribute.

-A	The variable is an associative array. You cannot unset this attribute.

-i	The value of the variable is an integer. Unset the attribute with +i.

-l	The variable name consists of lowercase characters only. Unset the attribute with +l.

-n	The variable becomes a name reference for another variable. Unset the attribute with +n.

-r	The variable is read-only. Unset the attribute with +r.

-t	If used with functions, the item inherits DEBUG and RETURN traps from the parent shell. Unset the attribute with +t.

-u	The variable name consists of uppercase characters only. Unset the attribute with +u.

-x	Export the variable to child processes, similar to the export command. Unset the attribute with +x.
