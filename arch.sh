FIGLET() {
    if ! which figlet > /dev/null; then
    clear
    sudo pacman -Syu --noconfirm figlet
fi
}

LOLCAT() {
    if ! which lolcat > /dev/null; then
    clear
    sudo pacman -Syu --noconfirm lolcat
fi
}

YAY() {
    if ! which yay > /dev/null; then
    clear
    sudo pacman -Syu --noconfirm
    sudo pacman -S --needed base-devel git --noconfirm
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si  --noconfirm
fi
}

#_ main _
FIGLET
LOLCAT
YAY
#
