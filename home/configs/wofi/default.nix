{ ... }:
{
  xdg.configFile = {
    "wofi/style.css".source = ./style.css;
  };
  programs.wofi = {
    enable = true;

    settings = {
      mode = "drun";
      prompt = "Search";
      allow_images = true;
    };
  };
}
