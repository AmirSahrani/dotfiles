{
  pkgs,
  lib,
  host,
  config,
  ...
}: 


with lib; {
  home.packages = with pkgs; [
  typst
  texliveFull
  inkscape
  zathura
  sioyek
  rendercv
  calligra
  ];
}
