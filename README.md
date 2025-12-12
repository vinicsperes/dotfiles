# Dotfiles

Personal configuration files for Fish shell, Starship prompt, and Ghostty terminal.

## Contents

- **fish/** - Fish shell configuration
  - `config.fish` - Main config with Starship integration
  - `functions/` - Custom Fish functions
- **starship/** - Starship prompt with Ubuntu Dark Harmony theme
- **ghostty/** - Ghostty terminal settings (MonoLisa font, transparency, custom styling)

## Usage

### Install configs to system

```bash
./install.sh
```

Copies configurations from this repo to `~/.config/`.

### Save current configs to repo

```bash
./save.sh
```

Copies configurations from `~/.config/` back to this repo.

## Requirements

- [Fish shell](https://fishshell.com/)
- [Starship](https://starship.rs/)
- [Ghostty](https://ghostty.org/)
- MonoLisa Variable font (for Ghostty)
