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
    };
    dock = {
      autohide = false;
      largesize = 58;
      magnification = true;
      orientation = "bottom";
      show-recents = false;
      tilesize = 36;
    };
  };
  security.pam.services.sudo_local.touchIdAuth = true;
  security.pam.services.sudo_local.watchIdAuth = true;
}
