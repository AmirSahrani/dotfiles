{configs, pkgs, programs, ...}:

{
  programs.java.enable = true;
  environment.systemPackages = with pkgs; [
    nodejs
    lshw
    fzf
    ripgrep
    gh
    gcc
    clang-tools
    cmake

    eza
    tree
    yazi
  ];

  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
  stdenv.cc.cc.lib
  zlib
  ];
}
