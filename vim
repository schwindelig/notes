w		# next word
$		# end of line
0		# beginning of line
H		# top of screen
M		# middle of screen
L		# bottom of screen
ctrl-f		# next screen
ctrl-b		# prev screen
G		# end of file
v		# toggle visual mode
y		# copy selected text
		# cut selected text
dd		# delete line (and puts them into buffer/clipboard)
u		# undo
:put		# paste copied lines starting on new line
gg		# go to top of file
shift-g		# go to bottom of file
[n] gg		# go to line [n]
/		# search forwards (hit n to go to next occurrence)
?		# search backwards (hit n to go to next occurrence)
*		# search for current word
:%s/[term]/[replace]		# search and replace [term] with [replace]
:%s/[term]/[replace]/c		# search and replace with confirm
