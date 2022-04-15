#!/bin/bash
echo "Installing deckifier, hang tight!"
read -p "Please make sure that you have multilib repository enabled, yay and git installed, then press enter to continue."
sudo pacman -Sy steam
echo "Steam is installed. Running it for checking updates."
steam
read -p "Once it's done, close it and don't log in. After closing, press enter to continue."
echo "Installing Mangohud and Steam Deck files."
yay -S mangohud
sudo cp etc /etc
sudo cp usr /usr
sudo pacman -S glew glfw glfw-x11
read -p "File copying done, after pressing enter, SteamDeck UI in windowed mode will appear, which will update your client to latest version, if polkit daemons ask you for authorization, enter your password and continue, now may log into your account."
steam -steamos3 -steampal -steamdeck -gamepadui
read -p "Once you finish, press enter to finish installation"
echo "Now you may start SteamOS session directly from your display manager options, choose SteamOS "(gamescope)" in login options and enter your password."
fi
