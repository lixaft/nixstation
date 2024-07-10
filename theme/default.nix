{
  wallpaper = ./wall.png;

  colors = rec {
    aquamarine = "#73daca";
    black = "#15161e";
    blue = "#7aa2f7";
    cyan = "#7dcfff";
    gray = "#a9b1d6";
    green = "#9ece6a";
    magenta = "#bb9af7";
    orange = "#ff9e64";
    purple = "#9d7cd8";
    red = "#f7768e";
    teal = "#1abc9c";
    turquoise = "#2ac3de";
    white = "#c0caf5";
    yellow = "#e0af68";

    fg = "#c0caf5";
    bg = "#030305";
    bg_highlight = "#292e42";

    accent = blue;
    comment = "#565f89";

    bar = {
      fg = gray;
      bg_dark = "#08080c";
      bg_light = black;
    };

    git = {
      add = "#449dab";
      change = "#6183bb";
      delete = "#914c54";
    };

    diff = {
    };
  };
}
