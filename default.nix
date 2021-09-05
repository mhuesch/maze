let
  sources = import ./nix/sources.nix;
in

{ pkgs ? import sources.nixpkgs {}
}:

pkgs.haskell.packages.ghc8104.callPackage ./maze.nix { }
