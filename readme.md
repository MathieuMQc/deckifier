# Deck-ifier

***SteamOS session on any Arch-based distro!***

This repository aims to add required SteamDeck's holo packages and binaries such as `steamos-update, jupiter-biosupdate, steamosatomupd`, Gamescope Wayland session and other required components to Arch Linux

This adds all of the required SteamOS dependencies, as well as everything needed for shader pre-cache downloading, FPS;TDP;GPU clock limiting, flyouts, update daemon, performance overlay and so on

Bugs: 

- Battery status doesn't work
- global FSR doesn't work (normal due to mesa/linux doesn't support that by default)

<!-- old readme bugs list -->
<!-- currently i don't know how to enable battery status for laptops, global FSR doesn't work (intended behavior, since extra/mesa and core/linux kernel doesn't support that. You may install SteamOS3 mesa and linux-neptune later if you want to try it) -->

Installation:
Before installing, make sure the `multilib` repository is enabled in /etc/pacman.conf and that you have yay installed.
the installation will fail otherwise!

Open a Terminal and do the following:
```
git clone https://github.com/bhaiest/deckifier.git
cd deckifier
chmod +x install.sh
./install.sh
```
