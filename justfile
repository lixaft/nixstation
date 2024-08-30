# print this help message
help:
    @just --list

# initialize host
init host:
    NIX_CONFIG="experimental-features = nix-command flakes" just deploy {{ host }}

# update the flake hashes
update:
    nix flake update

# install the configuration to the current host
[positional-arguments]
deploy host=`hostname`:
    nixos-rebuild switch --use-remote-sudo --flake .#{{ host }}

# build and activate the current configuration
[positional-arguments]
test host=`hostname`:
    nixos-rebuild test --use-remote-sudo --flake .#{{ host }}

alias d := deploy
alias i := init
alias t := test
alias u := update
