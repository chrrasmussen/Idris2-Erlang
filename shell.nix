{ pkgs ? import ./nix }:
let
  pkg = import ./default.nix { inherit pkgs; };
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    bashInteractive
    chez
    erlang
    gambit
    git
    gnumake
    idris2
    niv
    nixpkgs-fmt
    nodejs
    rebar3
  ] ++ pkg.nativeBuildInputs;
}
