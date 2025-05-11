{
  homebrew = {
    enable = true;
    brews = [
      "watch"
    ];
    casks = [
      "font-monaspace" # https://github.com/githubnext/monaspace
      "ghostty"
      "latest" # https://github.com/mangerlahn/Latest
      "notion"
      "obs"
      "pearcleaner"
      "raycast"
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
