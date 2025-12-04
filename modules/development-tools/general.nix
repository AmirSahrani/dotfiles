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
    tree
    # Terminal file manager
    yazi


    # python
    python3
    uv
    nix-index
    lazygit

  ];

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
  stdenv.cc.cc.lib
  zlib
  ];
}
