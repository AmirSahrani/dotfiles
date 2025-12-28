{ pkgs, ... }:

{ 
  home.packages = with pkgs; [
    nerd-fonts.iosevka
    nerd-fonts.iosevka-term
    ubuntu-classic
    liberation_ttf
  ];

  fonts.fontconfig.enable = true;

  # Optionally set default fonts
  /* fonts.fontconfig.defaultFonts = {
    monospace = [ "Ioveska Nerd Font" ]; 
    serif = [  "Liberation Serif" "Vazirmatn" ];
    sansSerif = [ "Ubuntu" "Vazirmatn" ];
  }; */
}

