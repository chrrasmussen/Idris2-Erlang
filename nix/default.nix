let
  sources = import ./sources.nix;
in
import sources.nixpkgs {
  overlays = [
    (self: super: {
      inherit (import sources.gitignore { inherit (super) lib; }) gitignoreSource;
      idris2 = super.idris2.overrideAttrs
        (_: {
          src = sources.idris2;
          buildFlags = [ "bootstrap" "SCHEME=scheme" ];
        });
      inherit (import sources.niv { pkgs = super; }) niv;
    })
  ];
}
