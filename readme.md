# Deck-ifier

***SteamOS session on any debian-based distro!***

This repository aims to add required SteamDeck's holo packages and binaries such as `steamos-update, jupiter-biosupdate, steamosatomupd`, the Gamescope Wayland session and other required components to Debian and presumably, Ubuntu!

This adds all of the required SteamOS dependencies, as well as everything needed for shader pre-cache downloading, FPS;TDP;GPU clock limiting, flyouts, update daemon, performance overlay and so on

## Known Bugs/issues: 

- Battery status doesn't work on some devices
- global FSR doesn't work (normal due to mesa/linux doesn't support that by default)
- Most times switching to desktop might not be correct, cycle thru tty shells until display manager appears
- in-Steam overlay might not work
- Probably more which isn't documented here

<div style="font-size: 12px;color: grey;">
Global FSR Note:
There is no known workaround for debian-based distributions
</div>

<!-- old readme bugs list -->
<!-- currently i don't know how to enable battery status for laptops, global FSR doesn't work (intended behavior, since extra/mesa and core/linux kernel doesn't support that. You may install SteamOS3 mesa and linux-neptune later if you want to try it) -->

## Pre-requisites
Before installing, make your system is up to date.

**the installation will fail otherwise!**

## Installation:

Open a Terminal and do the following:
```
git clone https://github.com/bhaiest/deckifier.git -b deb
cd deckifier
chmod +x install.sh
./deckifier.sh --install
```
you can also do --help instead to see a small summary of available options

