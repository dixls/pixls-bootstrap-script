## pixls' bootstrap script

This repo should pretty much only contain this readme and `start.sh`. The goal
is for `start.sh` to be accessible from a memorable url to make setting up a new
machine easy.

The plan for now is to have `start.sh` install nix, and then download the
appropriate nix config for the given architecture and then build and switch to
the new configuration based.

The current `nix-darwin-config` needs some tuning to be usable, and the way
flakes are configured would make a mess of hostnames on new machines.

TODO:
- [ ] Make room for use with as-yet-unnamed machines
- [ ] Make script work with nixos machines
- [ ] Make script work with non nixos linux machines
