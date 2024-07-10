{
  nixpkgs,
  nix-wsl,
  nix-darwin,
  home-manager,
  ...
}@inputs:
{
  system,
  host,
  user,
  home ? false,
  wsl ? false,
  darwin ? false,
  stateVersion,
}@systemInputs:
let
  systemFunc = if darwin then inputs.nix-darwin.lib.darwinSystem else nixpkgs.lib.nixosSystem;

  specialArgs = rec {
    inputs = inputs;
    system = systemInputs;
    theme = import ../theme;
    colors = theme.colors;
  };
  overlays = [ ];

  wslModule = nix-wsl.nixosModules.wsl;
  homeModule = home-manager.nixosModules.home-manager;

  homeConfig = {
    home-manager = {
      useGlobalPkgs = true;
      useUserPackages = true;
      users.${user}.imports = [ ../home ];
      extraSpecialArgs = specialArgs;
      backupFileExtension = "bak";
    };
  };
in
systemFunc {
  inherit system;
  modules = [
    { config._module.args = specialArgs; }
    { nixpkgs.overlays = overlays; }

    (if wsl then wslModule else { })

    ../hosts/${host}
    ../users/${user}

    (if home then homeModule else { })
    (if home then homeConfig else { })
  ];
}
