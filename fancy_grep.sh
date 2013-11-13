#/bin/sh
 
# this script greps .rb files on the the current directory recursively for a word displaying the line, line number and file path.  
 
 
# greps recursively ruby files and displaing lines 
grep -r -n --include="*.rb" $1 . | 
 
# strip white spaces
tr -d '  '| 
 
# use columns
column -s : -t |
 
# We use awk to re arrange the colums and color them
awk '{ print "\033[1;31m" $2 " "  "\033[1;32m" $1 " " "\033[1;34m" $3}' | 
 
# and we output a bit better the columns
column  -t 
