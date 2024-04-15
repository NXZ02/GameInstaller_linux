FIGLET() {
    if ! which figlet > /dev/null; then
    clear
    sudo apt install figlet -y 
fi
}

LOLCAT() {
    if ! which lolcat > /dev/null; then
    clear
    sudo apt install lolcat -y
fi
}


#_ main _
FIGLET
LOLCAT
#
