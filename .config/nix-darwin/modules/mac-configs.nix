{ pkgs, ... }:
{
  system.defaults = {
    finder = {
      AppleShowAllExtensions = true;
      AppleShowAllFiles = true;
      FXEnableExtensionChangeWarning = false;
      ShowPathbar = true;
      ShowStatusBar = true;
    };
    loginwindow.LoginwindowText = "Ehsan's Mac";
    trackpad.TrackpadThreeFingerDrag = true;
    NSGlobalDomain = {
      AppleKeyboardUIMode = 3; # Full keyboard access
      AppleShowAllExtensions = true; # Show all file extensions
      NSNavPanelExpandedStateForSaveMode = true; # Expand save dialog by default
      AppleInterfaceStyle = "Dark";
      "com.apple.mouse.tapBehavior" = 1; # Enable tap to click
      "com.apple.trackpad.scaling" = 2.5; # Set trackpad speed
      "com.apple.swipescrolldirection" = false; # Disable natural scrolling
    };
    dock = {
      autohide = false;
      largesize = 58;
      magnification = true;
      mru-spaces = false;
      orientation = "bottom";
      show-recents = false;
      tilesize = 36;
      persistent-apps = [
        "/Applications/Firefox.app"
        { spacer = { small = true; };}
        "/Applications/Ghostty.app"
        "${pkgs.obsidian}/Applications/Obsidian.app"
        "/Applications/Visual Studio Code.app"
        "/Applications/Notion.app"
        { spacer = { small = true; };}
        "/Applications/Spotify.app"
        "/Applications/Enpass.app"
      ];
    };
  };
  security.pam.services.sudo_local.touchIdAuth = true;
  security.pam.services.sudo_local.watchIdAuth = true;
}
