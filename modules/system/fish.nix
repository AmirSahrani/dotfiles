{pkgs, lib, config, ...}:

{
  programs.fish = {
    enable = true;
    generateCompletions = true; 
    interactiveShellInit = ''
      set fish_greeting # Disable greeting
      source ~/.venv/bin/activate.fish
      export LD_LIBRARY_PATH=${pkgs.stdenv.cc.cc.lib}/lib:${pkgs.linuxPackages.nvidia_x11}/lib:${pkgs.ncurses5}/lib:${pkgs.pipewire}/lib
      export EXTRA_LDFLAGS="-L/lib -L${pkgs.linuxPackages.nvidia_x11}/lib"
      export EXTRA_CCFLAGS="-I/usr/include"
      export SDL_VIDEODRIVER=wayland
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
