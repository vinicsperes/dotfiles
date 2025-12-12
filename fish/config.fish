set -gx STARSHIP_CONFIG ~/.config/starship/starship.toml

# Starship
if command -q starship
    starship init fish | source
end
