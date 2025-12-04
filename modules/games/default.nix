{
  pkgs,
  lib,
  host,
  config,
  ...
}: 


with lib; {
    # Configure & Theme Waybar
    programs.steam.enable = true;

  environment.systemPackages = with pkgs; [
    # WINE 
    wine
    winetricks
    protontricks
    vulkan-tools
    r2modman
    ];
} 

