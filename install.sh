#!/bin/bash
# install.sh - Install configs from dotfiles repo to system

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing configs from dotfiles repo..."

# Create config directories if they don't exist
mkdir -p ~/.config/fish/functions
mkdir -p ~/.config/starship
mkdir -p ~/.config/ghostty
mkdir -p ~/.config/kitty

# Fish
if [ -f "$DOTFILES_DIR/fish/config.fish" ]; then
    echo "  -> fish"
    cp "$DOTFILES_DIR/fish/config.fish" ~/.config/fish/
    cp -r "$DOTFILES_DIR/fish/functions/"* ~/.config/fish/functions/ 2>/dev/null || true
fi

# Starship
if [ -f "$DOTFILES_DIR/starship/starship.toml" ]; then
    echo "  -> starship"
    cp "$DOTFILES_DIR/starship/starship.toml" ~/.config/starship/
fi

# Ghostty
if [ -f "$DOTFILES_DIR/ghostty/config" ]; then
    echo "  -> ghostty"
    cp "$DOTFILES_DIR/ghostty/config" ~/.config/ghostty/
fi

# Kitty
if [ -f "$DOTFILES_DIR/kitty/kitty.conf" ]; then
    echo "  -> kitty"
    cp "$DOTFILES_DIR/kitty/kitty.conf" ~/.config/kitty/
    cp "$DOTFILES_DIR/kitty/colors.conf" ~/.config/kitty/ 2>/dev/null || true
fi

echo ""
echo "Done! Configs installed."
echo "Restart your terminal or run 'source ~/.config/fish/config.fish' to apply changes."
