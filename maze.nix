{ mkDerivation, array, base, brick, combinat, containers, extra
, lib, microlens-platform, pqueue, random, text, time, union-find
, vty
}:
mkDerivation {
  pname = "maze";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    array base brick combinat containers extra pqueue random time
    union-find vty
  ];
  executableHaskellDepends = [
    array base brick containers microlens-platform random text time vty
  ];
  license = "unknown";
  hydraPlatforms = lib.platforms.none;
}
