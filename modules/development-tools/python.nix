{configs, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
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
