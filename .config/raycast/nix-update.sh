#!/run/current-system/sw/bin/fish

# Raycast Script Command Template
#
# Duplicate this file and remove ".template" from the filename to get started.
# See full documentation here: https://github.com/raycast/script-commands
#
# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Nix Update
# @raycast.mode fullOutput
# @raycast.packageName My Scripts
#
# Optional parameters:
# @raycast.icon https://search.nixos.org/images/nix-logo.png
# @raycast.needsConfirmation true

nix flake update --flake ~/.config/nix-darwin
darwin-rebuild switch --flake ~/.config/nix-darwin#mac
