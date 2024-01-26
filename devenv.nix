{ pkgs, ... }: {
  packages = [ 
    pkgs.ghcid
    pkgs.stack
  ];

  languages.haskell.enable = true;
  languages.haskell.package = pkgs.haskell.compiler.ghc963;
}
