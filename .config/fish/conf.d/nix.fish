alias nix-deploy "darwin-rebuild switch --flake ~/.config/nix-darwin#mac"
alias nix-update "nix flake update --flake ~/.config/nix-darwin && nix-deploy"
