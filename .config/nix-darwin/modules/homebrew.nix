{
  homebrew = {
    enable = true;
    brews = [
      "watch"
    ];
    casks = [
      "font-monaspace" # https://github.com/githubnext/monaspace
      "pearcleaner"
      "raycast"
    ];
    masApps = {
      "The Unarchiver" = 425424353; # https://apps.apple.com/de/app/the-unarchiver/id425424353
      "Enpass" = 732710998; # https://apps.apple.com/de/app/enpass-password-manager/id732710998
    };
    onActivation.autoUpdate = true;
    onActivation.upgrade = true;
  };
}
