{configs, pkgs, ...}:

{
  home.packages = with pkgs; [
    freecad
    blender
    prusa-slicer
    orca-slicer
    ];
}
