FIGLET() {
    if ! which figlet > /dev/null; then
    clear
    sudo yum install figlet -y 
fi
}

LOLCAT() {
    if ! which lolcat > /dev/null; then
    clear
    sudo yum install lolcat -y
fi
}


#_ main _
FIGLET
LOLCAT
#
