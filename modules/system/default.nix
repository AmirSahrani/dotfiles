{configs, lib, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    udisks
    udiskie
    btop
    brightnessctl
    sunsetr
    nsxiv
    protonvpn-gui
    monitor
    playerctl

  ];
  xdg.portal.extraPortals = with pkgs ; [
	xdg-desktop-portal-hyprland
	xdg-desktop-portal-gtk
  ];
  services.udisks2.enable = true;
}
