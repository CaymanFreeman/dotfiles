# dotfiles
A collection of my [dotfiles](https://en.wiktionary.org/wiki/dotfile), settings, configs, etc. for various apps and programs.

## Setup Prequisites
Both [Git](https://git-scm.com/) and [GNU Stow](https://www.gnu.org/software/stow/) are required to easily implement them.

## Setup
```bash
git clone https://github.com/CaymanFreeman/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

## Stow
To use a section of dotfiles, stow the section's directory name.

Example of using my neofetch config:
```bash
stow neofetch
```

## Scripts
Make the gpu-screen-recorder scripts executable:
```bash
chmod +x ~/scripts/start-replay.sh
chmod +x ~/scripts/stop-replay.sh
chmod +x ~/scripts/save-replay.sh
```

## Equibop
Equibop will not read settings from a symlink. The file(s) must be copied instead:
```bash
cp ~/dotfiles/equibop/.var/app/io.github.equicord.equibop/config/equibop/settings/settings.json ~/.var/app/io.github.equicord.equibop/config/equibop/settings
```