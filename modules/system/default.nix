{configs, lib, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    nix-index
    brightnessctl
    wl-clipboard
    libnotify
    cliphist
    tldr
    udisks
    udiskie
    btop
    xdg-desktop-portal-gnome
    gnome-system-monitor
    wlr-randr
    sunsetr
    nsxiv
    protonvpn-gui
    monitor
    brightnessctl



    playerctl
    pwvucontrol
    vlc
    mpv

  ];
  xdg.portal.extraPortals = with pkgs ; [
	xdg-desktop-portal-hyprland
	xdg-desktop-portal-gtk
  ];
  services.udisks2.enable = true;
  services.tailscale.enable = true;
  hardware.logitech.wireless.enableGraphical = true;
}
