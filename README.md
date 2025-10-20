# dotfiles
A collection of my [dotfiles](https://en.wiktionary.org/wiki/dotfile), settings, configs, etc. for various apps and programs.

## Prequisites
Both [Git](https://git-scm.com/) and [GNU Stow](https://www.gnu.org/software/stow/) are required to easily implement them.

## Clone Repository
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

## Cosmic
Files that already exist may need to be deleted first:

### cosmic-appearance
```bash
rm -rf ~/.config/cosmic/com.system76.CosmicPanel.Panel
rm -rf ~/.config/cosmic/com.system76.CosmicPanel
rm -rf ~/.config/cosmic/com.system76.CosmicTheme.Dark
rm -rf ~/.config/cosmic/com.system76.CosmicTheme.Mode
```

### cosmic-idle
```bash
rm -rf ~/.config/cosmic/com.system76.CosmicIdle
```

## GPU Screen Recorder
Make the gpu-screen-recorder scripts executable and enable service:
```bash
chmod +x ~/scripts/start-replay.sh
chmod +x ~/scripts/stop-replay.sh
chmod +x ~/scripts/save-replay.sh
systemctl --user daemon-reload
systemctl --user enable start-replay.service
```

libnotify will need to be installed for notifications to work:
```bash
sudo apt install libnotify-bin -y
```

## Equibop
Equibop will not read settings from a symlink. The file(s) must be copied instead:
```bash
mkdir -p ~/.var/app/io.github.equicord.equibop/config/equibop/ && cp ~/dotfiles/equibop/.var/app/io.github.equicord.equibop/config/equibop/settings/settings.json ~/.var/app/io.github.equicord.equibop/config/equibop/settings
```