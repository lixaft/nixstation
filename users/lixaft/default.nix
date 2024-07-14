{ system, pkgs, ... }:
{
  programs.fish.enable = true;

  users.users.${system.user} = {
    description = "${system.user}";

    shell = pkgs.fish;
  };
}
