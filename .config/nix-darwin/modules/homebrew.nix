{
  homebrew = {
    enable = true;
    brews = [
      "git-secrets"
      "noahgorstein/tap/jqp"
      "watch"
    ];
    casks = [
      "android-platform-tools"
      "font-code-new-roman-nerd-font"
      "font-fira-code-nerd-font"
      "font-fira-code"
      "font-hasklig"
      "font-hasklug-nerd-font"
      "font-jetbrains-mono"
      "font-monaspace" # https://github.com/githubnext/monaspace
      "font-source-code-pro"
      "font-ubuntu-mono-nerd-font"
      "font-ubuntu-mono"
      "ghostty"
      "latest" # https://github.com/mangerlahn/Latest
      "notion"
      "obs"
      "pearcleaner"
      "raycast"
      "tabby"
      "vlc"
    ];
    masApps = {
      "Enpass" = 732710998; # https://apps.apple.com/de/app/enpass-password-manager/id732710998
      "Nextdns" = 1464122853; # https://apps.apple.com/de/app/nextdns/id1464122853
      "The Unarchiver" = 425424353; # https://apps.apple.com/de/app/the-unarchiver/id425424353
    };
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}
