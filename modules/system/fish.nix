{pkgs, lib, config, ...}:

{
  programs.fish = {
    enable = true;
    generateCompletions = true; 
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
      export BACKGROUND="/etc/nixos/wallpapers/Pwettyfwowers.jpg"
    '';
    shellAliases = {
      snvim = "sudo -E nvim";
      cd = "z";
      y = "yazi";
      ls = "eza";
      v = "nvim";
    };

    };
  programs.bash.enable = true;
}
