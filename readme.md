# Deck-ifier

***SteamOS session on any Arch-based distro!***

This repository aims to add required SteamDeck's holo packages and binaries such as `steamos-update, jupiter-biosupdate, steamosatomupd`, Gamescope Wayland session and etc.

This adds all of the required SteamOS dependencies, so the things such as shader pre-caching downloading, FPS;TDP;GPU clock limiting, flyouts, update daemon, performance overlay works as intended!

Bugs: currently i don't know how to enable battery status for laptops, global FSR doesn't work (intended behavior, since extra/mesa and core/linux kernel doesn't support that. You may install SteamOS3 mesa and linux-neptune later if you want to try it)

Installation:
Before installing, make sure multilib repository is enabled in /etc/pacman.conf, yay and git installed.

Open terminal, clone this repository, go inside this directory and type:
```
chmod +x install.sh
./install.sh
```
 