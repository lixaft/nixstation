{ lib, ... }:
{
  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = lib.readFile ./hyprland.conf;
  };

  services.hyprpaper = {
    enable = true;
    settings = {
      preload = "/home/lixaft/downloads/wall2.png";
      wallpaper = ", /home/lixaft/downloads/wall2.png";
    };
  };
}
