## neofetch
```bash
sudo apt install neofetch -y
```

## gpu-screen-recorder
```bash
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --system flathub com.dec05eba.gpu_screen_recorder -y
```

libnotify will need to be installed for notifications to work:
```bash
sudo apt install libnotify-bin -y
```