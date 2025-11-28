{ pkgs, ... }:

{ 
  home.packages = with pkgs; [
    nerd-fonts.fira-code
    nerd-fonts.droid-sans-mono
  ];

  fonts.fontconfig.enable = true;

  # Optionally set default fonts
  fonts.fontconfig.defaultFonts = {
    monospace = [ "FiraCode Nerd Font Mono" ];
  };
}

