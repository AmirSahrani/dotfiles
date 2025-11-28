{configs, pkgs, ...}:
{
  home.packages = with pkgs; [
    signal-desktop
    telegram-desktop
    (discord.override {
    withOpenASAR = true;
    withVencord = true;})

  ];
}

