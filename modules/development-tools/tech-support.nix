{configs, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [

  rpi-imager
  caligula


  ];

}
