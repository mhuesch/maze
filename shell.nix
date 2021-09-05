let
  sources = import ./nix/sources.nix;
in

{ pkgs ? import sources.nixpkgs {}
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    cabal-install
    cabal2nix
    ghcid
    haskell.compiler.ghc8104
  ];
}
