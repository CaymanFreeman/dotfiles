## cosmic-appearance
```bash
rm -rf ~/.config/cosmic/com.system76.CosmicPanel.Panel
rm -rf ~/.config/cosmic/com.system76.CosmicPanel
rm -rf ~/.config/cosmic/com.system76.CosmicTheme.Dark
rm -rf ~/.config/cosmic/com.system76.CosmicTheme.Mode
stow cosmic-appearance
```

## cosmic-idle
```bash
rm -rf ~/.config/cosmic/com.system76.CosmicIdle
stow cosmic-idle
```

## gpu-screen-recorder
Make the gpu-screen-recorder scripts executable and enable service:
```bash
stow gpu-screen-recorder
chmod +x ~/scripts/start-replay.sh
chmod +x ~/scripts/stop-replay.sh
chmod +x ~/scripts/save-replay.sh
systemctl --user daemon-reload
systemctl --user enable start-replay.service
```

## equibop
```bash
mkdir -p ~/.var/app/io.github.equicord.equibop/config/equibop/ && cp ~/dotfiles/equibop/.var/app/io.github.equicord.equibop/config/equibop/settings/settings.json ~/.var/app/io.github.equicord.equibop/config/equibop/settings
```