{configs, pkgs, ...}:
{
  home.packages = with pkgs; [
    signal-desktop
    spotify
    telegram-desktop
    (discord.override {
    withOpenASAR = true;
    withVencord = true;})

  ];
}

