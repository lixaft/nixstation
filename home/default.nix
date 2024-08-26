{
  theme,
  system,
  config,
  pkgs,
  ...
}:
let
  root_dir = "${config.home.homeDirectory}/.dots";
in
{
  home = rec {
    username = system.user;
    homeDirectory = "/home/${username}";
    sessionPath = [ "${homeDirectory}/.local/bin" ];

    file = {
      ".background-image".source = theme.wallpaper;
      ".local/bin/pydep".source = ./scripts/pydep;
      ".local/bin/tmux-sessionizer".source = ./scripts/tmux-sessionizer;
    };

    shellAliases = rec {
      os-update = "nix flake update ${root_dir}";
      os-test = "sudo nixos-rebuild test --flake ${root_dir}";
      os-rebuild = "sudo nixos-rebuild switch --flake ${root_dir}";
      os-upgrade = "${os-update} && ${os-rebuild}";

      db = "distrobox";
      dev = "distrobox enter dev";

      df = "df -H";
      du = "du -H";

      fd = "${pkgs.fd}/bin/fd --hidden";
      grep = "${pkgs.ripgrep}/bin/rg";
    };

    packages = with pkgs; [
      act
      alacritty
      baobab
      bazecor
      bc
      black
      blender
      brave
      btop
      cargo
      cloc
      cmake
      curl
      discord
      distrobox
      eog
      fd
      feh
      ffmpeg
      filebot
      flameshot
      gcc
      geeqie
      gh
      gnumake
      go
      google-chrome
      gpick
      graphviz
      hyprpicker
      iaito
      jq
      just
      killall
      less
      luajit
      mypy
      nautilus
      nerdfonts
      nixfmt-rfc-style
      nodePackages.prettier
      nodejs
      obs-studio
      parallel
      pavucontrol
      peek
      pkgs.file
      playerctl
      pre-commit
      protonvpn-gui
      pypy
      python3
      qbittorrent
      rename
      ripgrep
      ruff
      selene
      spotify
      sqlfluff
      stylua
      sushi
      tlrc
      totem
      tree
      twine
      typos
      uv
      vcv-rack
      wget
      wl-clipboard
      xclip
      xdg-utils
      zig
    ];
  };

  programs = {
    bash.enable = true;
    home-manager.enable = true;
    thefuck.enable = true;
    zoxide.enable = true;
  };

  services = {
    picom.enable = true;
    unclutter.enable = true;
  };

  fonts.fontconfig.enable = true;

  dconf = {
    enable = true;
    settings = {
      "org/virt-manager/virt-manager/connections" = {
        autoconnect = [ "qemu:///system" ];
        uris = [ "qemu:///system" ];
      };
    };
  };

  imports = [
    ./configs/alacritty
    ./configs/bat
    ./configs/eza
    ./configs/fish
    ./configs/fzf
    ./configs/git
    ./configs/hypr
    ./configs/i3
    ./configs/lf
    ./configs/litecli
    ./configs/nixpkgs
    ./configs/nvim
    ./configs/rofi
    ./configs/starship
    ./configs/theme
    ./configs/tmux
    ./configs/waybar
    ./configs/wofi
    ./configs/xdg
  ];

  systemd.user.startServices = "sd-switch";

  home.stateVersion = system.stateVersion;
}
