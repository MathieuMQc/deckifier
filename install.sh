#!/bin/bash

# Ansi color code variables
# shellcheck disable=SC2034
red="\e[0;91m"
# shellcheck disable=SC2034
blue="\e[0;94m"
# shellcheck disable=SC2034
green="\e[0;92m"
# shellcheck disable=SC2034
white="\e[0;97m"
# shellcheck disable=SC2034
bold="\e[1m"
# shellcheck disable=SC2034
uline="\e[4m"
# shellcheck disable=SC2034
reset="\e[0m"

help() {
    echo -e "${bold}Deck-ifier${reset}"
    echo -e "${italic}SteamOS bits for Arch Linux and it's forks${reset}"
    echo -e "Using this, you can get almost everything that SteamOS on the Steam Deck has to offer on any Arch Linux installation"
    printf "\n"
    echo "Syntax:"
    echo -e "$0 --help          Brings up this help page"
    echo -e "$0 --install       Starts the installation"
}

deckifierinstall() {
    echo -e " ${green}Installing deckifier, hang tight!"
    # read -p "Please make sure that you have multilib repository enabled, yay and git installed, then press enter to continue."
    read -p -r "Please make sure the Multilib repository is enabled, otherwise, the installation will fail!"
    sudo pacman -Sy steam gamescope jq dmidecode
    echo "Steam is installed. Running it for checking updates."
    read -p -r "Once it's done, close it and don't log in. After closing, press enter to continue."
    steam
    read -p -r "Steam update finished, close it and press enter to continue."
    echo "Installing Mangohud and Steam Deck files."
    yay -S mangohud
    # shortened this to what it is below
    # sudo cp -r etc /
    # sudo cp -r usr /
    sudo cp -r "{etc, usr}" "/"
    sudo chmod 0644 /usr/share/polkit-1/actions/org.val*
    # shortened this too
    # sudo chmod +x /usr/bin/jupiter*
    # sudo chmod +x /usr/bin/steamos*
    # sudo chmod +x /usr/bin/mangoapp
    # sudo chmod +x /usr/bin/gamescope-session
    # sudo chmod +x /usr/bin/steamos-polkit-helpers/*
    sudo chmod +x "/usr/bin/{jupiter*, steamos*, mangoapp*, gamescope-session*, steamos-polkit-helpers/*}"
    sudo pacman -S glew glfw-wayland
    echo -e "${green}Installation complete, now you can run the following or select the \"SteamOS\" session in your Display Manager"
    echo -e "${reset}Command to run Steam Deck UI: steam -steamos3 -steampal -steamdeck -gamepadui"
}

# check if you're even running Arch Linux (with yay) in the first place by checking if pacman and yay available
archcheck() {
    #shellcheck disable=SC1014,SC2050,SC2057
    if [ command -v pacman ] && [ command -v yay ]; then
        deckifierinstall
    else
        echo -e "${red}pacman and yay wasn't found! are you running Arch Linux?${reset}"
    fi
}

if [ -n "$1" ]; then
    case "$1" in
    --install)
        deckifierinstall
        ;;
    --help)
        help
        ;;
    esac
    shift
else
    gui
fi
