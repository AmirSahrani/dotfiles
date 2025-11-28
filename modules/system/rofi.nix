{configs, pkgs, ...}:

{
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;
    plugins = with pkgs; [
      rofi-screenshot
      rofi-calc
      rofi-power-menu
      rofi-emoji
    ];};

  home.packages = with pkgs; [
    grim          # Wayland screenshot tool
    slurp         # For region selection
    wl-clipboard  # For clipboard copy support
  ]; 
}
