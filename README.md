# dotfiles
A collection of my [dotfiles](https://en.wiktionary.org/wiki/dotfile) for various apps and programs.

## Setup Prequisites
Both [Git](https://git-scm.com/) and [GNU Stow](https://www.gnu.org/software/stow/) are required to easily implement them.

## Setup
```bash
git clone https://github.com/CaymanFreeman/dotfiles.git ~/dotfiles && cd ~/dotfiles
```

## Stow
To use a section of dotfiles, stow the section's directory name.

Example of using my neofetch config:
```bash
stow neofetch
```
