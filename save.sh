#!/bin/bash
# save.sh - Backup current configs to dotfiles repo

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Saving configs to dotfiles repo..."

# Fish
if [ -d ~/.config/fish ]; then
    echo "  -> fish"
    cp ~/.config/fish/config.fish "$DOTFILES_DIR/fish/"
    cp -r ~/.config/fish/functions/* "$DOTFILES_DIR/fish/functions/" 2>/dev/null || true
fi

# Starship
if [ -f ~/.config/starship/starship.toml ]; then
    echo "  -> starship"
    cp ~/.config/starship/starship.toml "$DOTFILES_DIR/starship/"
fi

# Ghostty
if [ -f ~/.config/ghostty/config ]; then
    echo "  -> ghostty"
    cp ~/.config/ghostty/config "$DOTFILES_DIR/ghostty/"
fi

echo ""
echo "Done! Configs saved to $DOTFILES_DIR"
echo ""
echo "To commit changes:"
echo "  cd $DOTFILES_DIR"
echo "  git add -A && git commit -m 'Update configs' && git push"
