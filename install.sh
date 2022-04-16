#!/bin/bash
echo "Installing deckifier, hang tight!"
read -p "Please make sure that you have multilib repository enabled, yay and git installed, then press enter to continue."
sudo pacman -Sy steam gamescope jq
echo "Steam is installed. Running it for checking updates."
read -p "Once it's done, close it and don't log in. After closing, press enter to continue."
steam
read -p "Steam update finished, close it and press enter to continue."
echo "Installing Mangohud and Steam Deck files."
yay -S mangohud
sudo cp -r etc /
sudo cp -r usr /
sudo chmod +x /usr/bin/jupiter*
sudo chmod +x /usr/bin/steamos*
sudo chmod +x /usr/bin/mangoapp
sudo chmod +x /usr/bin/gamescope-session
sudo chmod +x /usr/bin/steamos-polkit-helpers/*
sudo pacman -S glew glfw
read -p "Installation complete, now you can run steam -steamos3 -steampal -steamdeck -gamepadui or logout to your display manager and select SteamOS Session"
