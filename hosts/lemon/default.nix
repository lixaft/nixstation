{
  pkgs,
  config,
  system,
  ...
}:
{
  imports = [
    ../../modules/core.nix
    ../../modules/desktop.nix
    ./hardware.nix
  ];

  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    modesetting.enable = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  fileSystems = {
    "/media" = {
      device = "papaya:/volume1/Jellyfin";
      fsType = "nfs";
    };
  };

  environment.systemPackages = with pkgs; [ nfs-utils ];

  system.stateVersion = system.stateVersion;
}
