{ config, lib, pkgs, ... }:





{
  imports = [
  ../../modules/system/fish.nix
  ../../modules/system/waybar.nix
  ../../modules/system/fuzzel.nix
  ../../modules/development-tools/rust.nix
  ../../modules/development-tools/cybersecurity.nix
  ../../modules/development-tools/game-dev.nix
  ../../modules/academic
  ../../modules/photography.nix
  ../../modules/socials.nix
  ../../modules/system/fonts.nix
  ../../modules/system/power_management.nix
  ];
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "amir";
  home.homeDirectory = "/home/amir";

  programs.gh = {
      enable = true;
      gitCredentialHelper = {
        enable = true;
      };
    };
  programs.git = {
    enable = true;
    settings.user.name = "Amir Sahrani";
    settings.user.email = "amirsahrani1@gmail.com";
    settings = {
         init.defaultBranch = "main";
        };
  };
  programs.eww.enable = true;

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.11"; # Please read the comment before changing.
  
  nixpkgs.config.allowUnfreePredicate = (_: true);

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.


  home.file = {
    ".config/nvim" = {
      source = config.lib.file.mkOutOfStoreSymlink "/etc/nixos/dotfiles/.config/nvim";
    };
    ".config/eww" = {
      source = config.lib.file.mkOutOfStoreSymlink "/etc/nixos/dotfiles/.config/eww";
    };
    ".config/niri" = {
      source = config.lib.file.mkOutOfStoreSymlink "/etc/nixos/dotfiles/.config/niri";
    };
    ".tmux.conf" = {
      source =  config.lib.file.mkOutOfStoreSymlink "/etc/nixos/dotfiles/.tmux.conf";
    };
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh 
  #
  # or
  #
  #  /etc/profiles/per-user/amir/etc/profile.d/hm-session-vars.sh
  #


  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.kitty = {
    enable = true;
  };
  programs.alacritty = {
    enable = true;


    settings = {
      font = {
        normal = {
          family = lib.mkForce "IosevkaTerm Nerd Font";
          style = "Regular";
        };
        size = lib.mkForce 18;
      };
    };
  };
  programs.zoxide.enable = true;
  programs.swaylock.enable = true;
  services.mako.enable = true;
  services.swayidle.enable = true;
  services.polkit-gnome.enable = true;
}
