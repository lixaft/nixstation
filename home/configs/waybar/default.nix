{ pkgs, theme, ... }:
let
  inherit (theme) colors;
in
{
  xdg.configFile = {
    "waybar/theme.css".text = # css
      ''
        @define-color fg #ffffff;
        @define-color fg-left ${colors.desktop.fg.left};
        @define-color fg-middle ${colors.desktop.fg.middle};
        @define-color fg-right ${colors.desktop.fg.right};

        @define-color bg-left ${colors.desktop.bg.left};
        @define-color bg-middle ${colors.desktop.bg.middle};
        @define-color bg-right ${colors.desktop.bg.right};
      '';
  };

  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;

        modules-left = [
          "custom/nixos"
          "hyprland/workspaces"
        ];
        modules-center = [ "clock" ];
        modules-right = [
          "tray"
          "pulseaudio"
          "network"
        ];

        "custom/nixos" = {
          format = ''<span color="${colors.desktop.fg.left}"> </span>'';
        };

        clock = {
          format = "{:%a %d %b %H:%M}";
        };

        tray = {
          spacing = 12;
        };

        pulseaudio = {
          format = ''<span color="${colors.desktop.fg.right}">{icon}</span> {volume}%'';
          format-icons = {
            default = [
              " "
              " "
              " "
            ];
          };

        };

        network = {
          format-wifi = ''<span color="${colors.desktop.fg.right}">{icon}</span> {essid}'';
          format-icons = [
            "󰤯 "
            "󰤟 "
            "󰤢 "
            "󰤥 "
            "󰤨 "
          ];
        };
      };
    };
  };
}
