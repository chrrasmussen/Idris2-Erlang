{ pkgs ? import ./nix
, src ? ./idris2
}:

pkgs.stdenv.mkDerivation rec {
  pname = "idris2erl";
  version = "0.2.1";
  inherit src;

  strictDeps = true;
  nativeBuildInputs = with pkgs; [
    chez
    clang
    idris2
    makeWrapper
  ];
  buidInputs = with pkgs; [
    chez
  ];

  prePatch = ''
    patchShebangs --build tests
  '';

  makeFlags = [ "PREFIX=${placeholder "out"}" ]
    ++ pkgs.stdenv.lib.optional pkgs.stdenv.isDarwin "OS=";

  buildFlags = [ "all" "SCHEME=scheme" ];

  postInstall =
    let
      includedLibs = [ "base" "contrib" "erlang" "network" "prelude" ];
      name = "idris2-${version}";
      packagePaths = builtins.map (l: "$out/${name}/" + l) includedLibs;
      additionalIdris2Paths = builtins.concatStringsSep ":" packagePaths;
    in
    ''
      rm -r $out/lib
      # Remove existing ${pname} wrapper that sets incorrect LD_LIBRARY_PATH
      rm $out/bin/${pname}
      # Move actual ${pname} binary
      mv $out/bin/${pname}_app/${pname}.so $out/bin/${pname}
      # After moving the binary, there is nothing left in ${pname}_app that isn't
      # either contained in lib/ or is useless to us.
      rm $out/bin/${pname}_app/*
      rmdir $out/bin/${pname}_app

      # idris2 needs to find scheme at runtime to compile
      # idris2 installs packages with --install into the path given by PREFIX.
      # Since PREFIX is in nix-store, it is immutable so --install does not work.
      # If the user redefines PREFIX to be able to install packages, idris2 will
      # not find the libraries and packages since all paths are relative to
      # PREFIX by default.
      # We explicitly make all paths to point to nix-store, such that they are
      # independent of what IDRIS2_PREFIX is. This allows the user to redefine
      # IDRIS2_PREFIX and use --install as expected.
      # TODO: Make support libraries their own derivation such that
      #       overriding LD_LIBRARY_PATH is unnecessary
      # TODO: Maybe set IDRIS2_PREFIX to the users home directory
      wrapProgram "$out/bin/${pname}" \
        --set-default CHEZ "${pkgs.chez}/bin/scheme" \
        --suffix IDRIS2_LIBS ':' "$out/${name}/lib" \
        --suffix IDRIS2_DATA ':' "$out/${name}/support" \
        --suffix IDRIS2_PATH ':' "${additionalIdris2Paths}" \
        --suffix LD_LIBRARY_PATH ':' "$out/${name}/lib"
    '';

  meta = with pkgs.stdenv.lib; {
    description = "Erlang code generator for Idris 2";
    homepage = "https://github.com/chrrasmussen/Idris2-Erlang";
    license = licenses.bsd3;
    maintainers = with maintainers; [ yurrriq ];
    inherit (pkgs.idris2.meta) platforms;
  };
}
