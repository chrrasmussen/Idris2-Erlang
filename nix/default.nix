let
  sources = import ./sources.nix;
in
import sources.nixpkgs {
  overlays = [
    (self: super: {
      inherit (import sources.niv { pkgs = super; }) niv;
      idris2 = super.idris2.overrideAttrs
        (_: {
          src = sources.idris2;
        });
    })
  ];
}
