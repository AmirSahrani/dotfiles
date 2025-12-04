{
  pkgs,
  lib,
  host,
  config,
  ...
}: 
with lib; {
    # Configure & Theme Waybar
    programs.waybar = {
      enable = true;
      package = pkgs.waybar;
      settings = [
        {
          layer = "top";
          position = "top";
          modules-left = [
            "niri/workspaces"
            "cpu"
            "custom/divider"
            "memory"
            "custom/divider"
            "disk"
            "privacy"
          ];

          modules-center= [
            "clock"
          ];
          modules-right = [
            "idle_inhibitor"
            "network"
            "tray"
            "custom/divider"
            "pulseaudio"
            "custom/divider"
            "battery"
            "custom/power"

          ];
          "custom/power"= {
                  "format" = "⏻ ";
                  "tooltip"= false;
                  "menu"= "on-click";
                  "menu-file"= "/etc/nixos/dotfiles/.config/waybar/power_menu.xml";
                  "menu-actions"= {
                          "shutdown"= "shutdown now";
                          "reboot"= "reboot";
                          "suspend"= "systemctl suspend";
                          "hibernate"= "systemctl hibernate";
                  };
          };
          "custom/divider" = {
                format = " | ";
                interval = "once";
                tooltip = false;
              };
          "clock" = {
            format =
              ''  {:L%H:%M}'';
            tooltip = true;
            tooltip-format = "<big>{:%A, %d.%B %Y }</big>\n<tt><small>{calendar}</small></tt>";
          };
          "memory" = {
            interval = 5;
            format = "  {}%";
            tooltip = true;
          };
          "cpu" = {
            interval = 5;
            format = "  {usage:2}%";
            tooltip = true;
          };
          "disk" = {
            format = "  {free}";
            tooltip = true;
          };
          "network" = {
            format-icons = [
              "󰤯"
              "󰤟"
              "󰤢"
              "󰤥"
              "󰤨"
            ];
            format-ethernet = " {bandwidthDownBytes}";
            format-wifi = "{icon} {signalStrength}%";
            format-disconnected = "󰤮";
            tooltip = true;
          };
          "niri/workspaces" = {
            format = "{icon}";  # Show workspace name and icon
            format-icons = {
              "active"= "";
              "default"= "";
              };
            };
          "tray" = {
            icon= "▦";
            spacing = 12;
          };
          "pulseaudio" = {
            format = "{icon}  {volume}% {format_source}";
            format-bluetooth = "{volume}% {icon} {format_source}";
            format-bluetooth-muted = " {icon} {format_source}";
            format-muted = " {format_source}";
            format-source = "  {volume}%";
            format-source-muted = "";
            format-icons = {
              headphone = "";
              hands-free = "";
              headset = "";
              phone = "";
              portable = "";
              car = "";
              default = [
                ""
                ""
                ""
              ];
            };
            on-click = "sleep 0.01 && pwvucontrol";
          };
          "idle_inhibitor" = {
            format = "{icon}";
            format-icons = {
              activated = "";
              deactivated = "";
            };
            tooltip = "true";
          };
          "battery" = {
            states = {
              warning = 30;
              critical = 15;
            };
            format = "{icon} {capacity}%";
            format-charging = "󰂄 {capacity}%";
            format-plugged = "󱘖 {capacity}%";
            format-icons = [
              "󰁺"
              "󰁻"
              "󰁼"
              "󰁽"
              "󰁾"
              "󰁿"
              "󰂀"
              "󰂁"
              "󰂂"
              "󰁹"
            ];
            on-click = "";
            tooltip = false;
          };
        }
      ];
    style = lib.mkForce (config.lib.file.mkOutOfStoreSymlink "/etc/nixos/dotfiles/.config/waybar/style.css");
    };
  }

