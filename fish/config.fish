set -gx STARSHIP_CONFIG ~/.config/starship.toml

# Starship
if command -q starship
    starship init fish | source
end

# opencode
fish_add_path /home/sn-387474/.opencode/bin
