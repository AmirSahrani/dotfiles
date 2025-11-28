{pkgs, lib, config, ...}:

{
  programs.fish = {
    enable = true;
    generateCompletions = true; 
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
    '';
    shellAliases = {
      snvim = "sudo -E nvim";
      cd = "z";
      y = "yazi";
      ls = "eza";
    };

    };
  programs.bash.enable = true;
}
