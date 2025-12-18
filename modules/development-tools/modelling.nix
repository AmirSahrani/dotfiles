{configs, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    freecad
    blender
    ];
}
