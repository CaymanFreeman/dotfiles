#!/bin/bash
sudo -v

PERFORMANCE_FLAGS="--enable-gpu-rasterization --enable-zero-copy --ignore-gpu-blocklist --enable-vulkan --enable-parallel-downloading"
BRAVE_DESKTOP="/usr/share/applications/brave-browser.desktop"
echo "Inserting performance flags..."
sudo sed -i '/^Exec=/ {/'"$PERFORMANCE_FLAGS"'/! s/$/ '"$PERFORMANCE_FLAGS"'/}' "$BRAVE_DESKTOP"

POLICY_DIRECTORY="/etc/brave/policies/managed"
POLICY_FILE_PATH="$POLICY_DIRECTORY/policy.json"
echo "Adding custom policy..."
sudo mkdir -p "$POLICY_DIRECTORY"
[ -L "$POLICY_FILE_PATH" ] || sudo ln -s -f "$HOME/dotfiles/brave-browser/scripts/policy.json" "$POLICY_FILE_PATH"
sudo chmod u=rw,g=r,o=r "$POLICY_FILE_PATH"

PREFERENCES_DIRECTORY="$HOME/.config/BraveSoftware/Brave-Browser/Default"
PREFERENCES_FILE="Preferences"
PREFERENCES_FILE_PATH="$PREFERENCES_DIRECTORY/$PREFERENCES_FILE"
echo "Changing perferences..."
mkdir -p "$PREFERENCES_DIRECTORY" && touch "$PREFERENCES_FILE_PATH"
jq -s '.[0] * .[1]' "$PREFERENCES_FILE_PATH" "$HOME/dotfiles/brave-browser/scripts/preferences.json" > "$PREFERENCES_FILE_PATH.temp" && mv "$PREFERENCES_FILE_PATH.temp" "$PREFERENCES_FILE_PATH"
sudo chmod u=rw,g=r,o=r "$PREFERENCES_FILE_PATH"
