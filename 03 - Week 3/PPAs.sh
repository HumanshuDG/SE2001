# PPA 1
ls -l *.txt > textFiles.txt 2> noFiles.txt && echo found

# PPA 2
cal $month 2022 > $month.txt 2> error.txt

# PPA 3
test $2 2> errorlog;
test -e 2>> errorlog;
test -n 2>> errorlog;
