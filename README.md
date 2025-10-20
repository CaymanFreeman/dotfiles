# dotfiles
A collection of my [dotfiles](https://en.wiktionary.org/wiki/dotfile), settings, configs, etc. for various apps and programs.

## Git & GNU Stow
```bash
sudo apt install git stow -y
```

## Clone Repository
```bash
git clone https://github.com/CaymanFreeman/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

## cosmic-appearance
Config
```bash
rm -rf ~/.config/cosmic/com.system76.CosmicPanel.Panel
rm -rf ~/.config/cosmic/com.system76.CosmicPanel
rm -rf ~/.config/cosmic/com.system76.CosmicTheme.Dark
rm -rf ~/.config/cosmic/com.system76.CosmicTheme.Mode
stow cosmic-appearance
```

## cosmic-idle
Config
```bash
rm -rf ~/.config/cosmic/com.system76.CosmicIdle
stow cosmic-idle
```

## bash
Config
```bash
stow bash
```

## neofetch
Install
```bash
sudo apt install neofetch -y
```

Config
```bash
stow neofetch
```

## gpu-screen-recorder
Install
```bash
flatpak remote-add --system --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --system flathub com.dec05eba.gpu_screen_recorder -y
sudo apt install libnotify-bin -y
```

Config
```bash
stow gpu-screen-recorder
chmod +x ~/scripts/start-replay.sh
chmod +x ~/scripts/stop-replay.sh
chmod +x ~/scripts/save-replay.sh
systemctl --user daemon-reload
systemctl --user enable start-replay.service
```

## equibop
Install
```bash
flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --user flathub io.github.equicord.equibop -y
```

Config
```bash
mkdir -p ~/.var/app/io.github.equicord.equibop/config/equibop/ && cp ~/dotfiles/equibop/.var/app/io.github.equicord.equibop/config/equibop/settings/settings.json ~/.var/app/io.github.equicord.equibop/config/equibop/settings
```