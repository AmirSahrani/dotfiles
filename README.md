# NixOS dotfiles


## Important for setting up new devices

1. Do not overwrite the hardware_config.nix file
2. Run `nix run home-manager/master -- init` before trying to configure home manager.


## In case I forget:

Without flakes, simply rebuild using 
```
sudo nixos-rebuild switch
```

Then when using flakes
```
sudo nixos-rebuild switch --flake /etc/nixos/$CONFIG

```

## TODO
