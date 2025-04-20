{
  description = "Ehsan's nix-darwin system flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nix-darwin.url = "github:nix-darwin/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nix-homebrew.url = "github:zhaofengli/nix-homebrew";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nix-homebrew }:
  let
    configuration = { pkgs, config, ... }: {
      nixpkgs.config.allowUnfree = true;
      # List packages installed in system profile. To search by name, run:
      # $ nix-env -qaP | grep wget
      environment.systemPackages =
        [
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

      # Add nix apps to macos finder
      system.activationScripts.applications.text = let
        env = pkgs.buildEnv {
          name = "system-applications";
          paths = config.environment.systemPackages;
          pathsToLink = "/Applications";
        };
      in
        pkgs.lib.mkForce ''
        # Set up applications.
        echo "setting up /Applications..." >&2
        rm -rf /Applications/Nix\ Apps
        mkdir -p /Applications/Nix\ Apps
        find ${env}/Applications -maxdepth 1 -type l -exec readlink '{}' + |
        while read -r src; do
          app_name=$(basename "$src")
          echo "copying $src" >&2
          ${pkgs.mkalias}/bin/mkalias "$src" "/Applications/Nix Apps/$app_name"
        done
            '';

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
          AppleKeyboardUIMode = 3;       # Full keyboard access
          AppleShowAllExtensions = true; # Show all file extensions
          NSNavPanelExpandedStateForSaveMode = true; # Expand save dialog by default
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

      # Necessary for using flakes on this system.
      nix.settings.experimental-features = "nix-command flakes";

      # Enable alternative shell support in nix-darwin.
      # programs.fish.enable = true;

      # Set Git commit hash for darwin-version.
      system.configurationRevision = self.rev or self.dirtyRev or null;

      # Used for backwards compatibility, please read the changelog before changing.
      # $ darwin-rebuild changelog
      system.stateVersion = 6;

      # The platform the configuration will be used on.
      nixpkgs.hostPlatform = "aarch64-darwin";
    };
  in
  {
    # Build darwin flake using:
    # $ darwin-rebuild build --flake .#mac
    darwinConfigurations."mac" = nix-darwin.lib.darwinSystem {
      modules = [
        configuration
        nix-homebrew.darwinModules.nix-homebrew
        {
          nix-homebrew = {
            enable = true;
            enableRosetta = true;
            user = "ehcan";
            autoMigrate = true;
          };
        }
      ];
    };
  };
}
