{configs, pkgs, ...}:

{
  programs.java.enable = true;
  home.packages= with pkgs; [
    godot
    libresprite



  ];

}
