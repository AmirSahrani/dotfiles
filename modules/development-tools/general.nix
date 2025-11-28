{configs, pkgs, programs, ...}:

{
  programs.java.enable = true;
  environment.systemPackages = with pkgs; [
    nodejs
    freecad
    lshw
    fzf
    ripgrep
    gh
    gcc
    clang-tools
    cmake

    eza
    
    # Terminal file manager
    yazi



  ];
}
