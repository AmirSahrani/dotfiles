{configs, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    python3
    uv
    nix-index
    lazygit

    python3Packages.euporie
  ];
}
