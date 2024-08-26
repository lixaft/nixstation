{ pkgs, ... }:
{
  # xdg.configFile = {
  #   "rofi/launcher.rasi".source =./launcher.rasi;
  # };

  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;

    theme = "${./style.css}";
  };
}
