#! /bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
  echo "Mac OS Confirmed, starting nix-darwin setup"
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Linux setup isn't quite ready"
  exit 1
fi

echo "jk we're gonna exit here"
exit 0

# download and run nix installer
echo "begin install nix"
sh <(curl -L https://nixos.org/nix/install)

echo "get nix-darwin config"
git clone https://github.com/dixls/nix-darwin-config.git
# currently this will fail because it is a private repo, but it might be able to
# be made public with a couple tweaks


cd nix-darwin-config
darwin-rebuild switch --flake .
