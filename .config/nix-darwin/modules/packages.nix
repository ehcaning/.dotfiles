{ config, pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.act
    pkgs.bat
    pkgs.curlie
    pkgs.duf
    pkgs.dust
    pkgs.eza
    pkgs.ffmpeg
    pkgs.fish
    pkgs.fzf
    # pkgs.ggshield
    pkgs.git
    pkgs.gnupg
    pkgs.htop
    pkgs.hugo
    pkgs.keepassxc
    pkgs.localsend
    pkgs.mkalias
    pkgs.nano
    pkgs.neovim
    pkgs.nixfmt-rfc-style
    pkgs.nodejs_22
    pkgs.obsidian
    pkgs.postman
    pkgs.sshuttle
    pkgs.starship
    pkgs.stow
    pkgs.tmux
    pkgs.unzip
    pkgs.uv
    pkgs.vim
    pkgs.wget
    pkgs.yq-go
    pkgs.zoxide
  ];
}
