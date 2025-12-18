{configs, pkgs, ...}:

{
  programs.java.enable = true;
  home.packages = with pkgs; [
    burpsuite
    nmap
    lynis



  ];

}
