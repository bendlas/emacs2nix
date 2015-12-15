#!/usr/bin/env nix-shell
#! nix-shell -p haskellPackages.cabal-install nix-prefetch-scripts subversion mercurial cvs bazaar git

# usage: ./melpa-packages.sh PATH_TO_MELPA_CLONE

nix-shell -A env --run "cabal run melpa2nix -- -o melpa-packages.json --work /tmp/melpa2nix --melpa $1"