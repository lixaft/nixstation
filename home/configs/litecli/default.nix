{
  pkgs,
  config,
  theme,
  ...
}:
let
  inherit (config.lib.file) mkOutOfStoreSymlink;
  nvim_dir = "${config.home.homeDirectory}/nixstation/home/configs/nvim";

  jsonFormat = pkgs.formats.json { };
in
{
  xdg.configFile = {
    "litecli/config".text = ''
      syntax_style = native
    '';
  };

  home.packages = with pkgs; [
    litecli
  ];
}
