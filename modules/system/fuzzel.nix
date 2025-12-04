{configs, pkgs, ...}:

{
  programs.fuzzel= {
    enable = true;
    settings = {
    main = {
      terminal = "${pkgs.fish}";
      layer = "overlay";
      dpi-aware = "yes";
      };
    };

    };

  home.packages = with pkgs; [
    grim          # Wayland screenshot tool
    slurp         # For region selection
    wl-clipboard  # For clipboard copy support
  ]; 
}
