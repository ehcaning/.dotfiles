{ config, pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.bat
    pkgs.duf
    pkgs.dust
    pkgs.eza
    pkgs.ffmpeg
    pkgs.fish
    pkgs.ggshield
    pkgs.git
    pkgs.gnupg
    pkgs.htop
    pkgs.mkalias
    pkgs.neovim
    pkgs.nixfmt-rfc-style
    pkgs.obsidian
    pkgs.pipx
    pkgs.pyenv
    pkgs.rbenv
    pkgs.starship
    pkgs.stow
    pkgs.unzip
    pkgs.vim
    pkgs.wget
  ];
}
