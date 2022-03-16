# PPA 1
echo `uname -a` | cut -d ' '  -f 13

# PPA 2
script() {
    grep 'FAILED LOGIN' myauth.log | wc -l
}

# PPA 3
script() {
    grep 'New session' myauth.log | cut -d " " -f 11 | cut -d "." -f 1 | sort --unique
}

# PPA 4
script() {
    grep 'session opened for user guest' myauth.log | cut -d " " -f 1,2,3 | tail -n 1
}

# PPA 5
script() {
    grep 'su:' -b myauth.log | grep 'session opened' | grep 'by student' | cut -d " " -f 11
}
