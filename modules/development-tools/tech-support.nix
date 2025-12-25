{configs, pkgs, ...}:

{
  environment.systemPackages = with pkgs; [
    rustdesk



  ];

}
