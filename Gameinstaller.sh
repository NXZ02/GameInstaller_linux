## code color 
G="$(printf '\033[1;32m')" 
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"
R="$(printf '\033[1;31m')"
##

# check figlet yay lolcat 
G1="lib/arch.sh"
G2="lib/debian.sh"
G3="lib/redhat.sh"
#

# Error run
er() {
  echo ${R}
echo "you not choose number "
sleep 1
clear
./Gameinstaller.sh
}
#

# check os debain arch redhat,fedora
CMD(){

LOLCAT() {
    if ! which pacman > /dev/null; then
    clear
    else
    	./$G1
fi
}

CFD() {
    if ! which apt > /dev/null; then
    clear
    else
    	./$G2

fi
}

CSD() {
    if ! which yum > /dev/null; then
    clear
    else
    	./$G3

fi
}

} # end CMD


banner(){ # banner Gamebox
	clear
	echo
	figlet Gamebox | lolcat
	echo
}





fever() { # banner fedora
  head
  clear
  echo ${Y}
  echo -e "fedora > 39"
  echo -e "fedora > 38"
echo ${W}

}

fewine() { # wine fedora 38,39
banner 
  read -p "choose : "  winetest

    if [ $wineset == 1 ]; then
      dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/39/winehq.repo
      dnf install winehq-stable -y 
      elif [ $wineset == 2 ]; 
      then
      dnf config-manager --add-repo https://dl.winehq.org/wine-builds/fedora/38/winehq.repo
 dnf install winehq-stable -y
else
er
fi

}





wine_ubuntu() { # wine ubuntu
    clear
Ubuntu_install
echo
read -p "choose : " ub
if [ $ub == 1 ]; then
sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/lunar/winehq-lunar.sources
sudo apt update -y
sudo apt install --install-recommends winehq-stable -y
elif [ $ub == 2 ]; then
sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/kinetic/winehq-kinetic.sources
sudo apt update -y 
sudo apt install --install-recommends winehq-stable -y
elif [ $ub = 3 ]; then
sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt update -y
sudo apt install --install-recommends winehq-stable -y
elif [ $ub == 4 ]; then
sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/focal/winehq-focal.sources
sudo apt update -y 
sudo apt install --install-recommends winehq-stable -y 
 clear
else
er
fi

}

Ubuntu_install() { # banner ubuntu
banner
echo   ${Y}
   echo -e "[1] Ubuntu 23.04"
   echo -e "[2] Ubuntu 22.10 " 
   echo -e "[3] Ubuntu 22.04"
   echo -e "[4] Ubuntu 20.04"
   echo ${W}


}



winedev() { # banner debian
   echo   
   echo -e "[1] Debian Testing(Trixie)"
   echo -e "[2] Debian 11 " 
   echo -e "[3] Debian 12"
   echo -e "[4] Ubuntu"
   echo 
}


oys() {

     echo -e "Arch[1]"
      echo -e "Manjaro[2]"
      echo
      read -p "choose os : " os
      if [ $os == 1 ]; then
      echo
      else
      echo
      fi
}


text_head() { # list banner  installer
    banner
    echo 
    echo -e "1. winehq"
    echo -e "2. Lutris"
    echo -e "3. Playonlinux"
    echo -e "4. Steam"
    echo -e "5. Ppsspp"
    echo 
}

arch(){ # arch install program
    if ! which pacman > /dev/null; then
    echo
    else
    ./$G1
    clear
    text_head
    read -p "choose : " c
    if [ $c == 1 ]; then
      sudo pacman -Syyu --noconfirm
      sudo pacman -S wine wine-mono wine-gecko  --noconfirm
      clear
      echo Done 
      elif [ $c == 2 ]; then
      sudo pacman -Syyu --noconfirm
      sudo pacman -S lutris --noconfirm
      elif [ $c == 3 ]; then
      ya
      yay -S playonlinux
      elif [ $c == 4 ]; then
      sudo pacman -Syu --noconfirm
      sudo pacman -S steam --noconfirm
      steam
      elif [ $c == 5 ]; then
      sudo pacman -S ppsspp --noconfirm
      else
      er
 
 
 fi   
fi
}
debian(){ # debian install program
    if ! which apt > /dev/null; then
    echo
    else
    	./$G2
 clear
    text_head
    read -p "choose : " c
    if [ $c == 1 ]; then
      sudo apt update -y 
      winedev
      read -p "debian : " de
      if [ $de == 1 ]; then
      sudo dpkg --add-architecture i386 
      sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/trixie/winehq-trixie.sources
sudo apt update -y 
sudo apt install --install-recommends winehq-stabl -y 
elif [ $de == 2 ]; then
sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bullseye/winehq-bullseye.sources
sudo apt update -y 
sudo apt install --install-recommends winehq-stable -y 
elif [ $de == 3 ]; then
sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/debian/dists/bookworm/winehq-bookworm.sources
sudo apt update -y 
sudo apt install --install-recommends winehq-stable -y 
echo

elif [ $de == 4 ]; then
wine_ubuntu
  else
er
fi   
      elif [ $c == 2 ]; then
     echo "deb [signed-by=/etc/apt/keyrings/lutris.gpg] https://download.opensuse.org/repositories/home:/strycore/Debian_12/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list > /dev/null
wget -q -O- https://download.opensuse.org/repositories/home:/strycore/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/keyrings/lutris.gpg > /dev/null
sudo apt update -y 
sudo apt install lutris -y 
      elif [ $c == 3 ]; then
      wget -q "http://deb.playonlinux.com/public.gpg" -O- | apt-key add -
wget http://deb.playonlinux.com/playonlinux_stretch.list -O /etc/apt/sources.list.d/playonlinux.list
apt-get update -y
apt-get install playonlinux -y
      elif [ $c == 4 ]; then
    sudo apt update 
    wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb
    sudo apt install -f 
    sudo dpkg -i steam.deb
      steam
      elif [ $c == 5 ]; then
      sudo apt install flatpak -y
      sudo apt install gnome-software-plugin-flatpak -y
      flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
      flatpak install https://dl.flathub.org/repo/appstream/org.ppsspp.PPSSPP.flatpakref
      else
      clear
      er



fi
fi
} 
fedora(){ # fedora install program
    if ! which dnf > /dev/null; then
    echo
    else
    	./$G3
     clear
     text_head
     read -p "choose : "fe
     if [ $fe == 1 ]; then
     sudo dnf upgrade -y
fever
fewine
elif [ $fe == 2 ]; then
clear
sudo dnf install lutris -y
elif [ $fe == 3 ]; then 
sudo dnf upgrade --refresh
sudo dnf install playonlinux -y
elif [ $fe == 4 ]; then
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install steam -y
else
er


fi
fi
}

# _Main_

CMD
fedora
arch
debian
# _End_