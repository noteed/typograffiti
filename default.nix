{ nixpkgs ? import <nixpkgs> {}
}:
let
  typograffiti-src = ./.;
  overlay = self: super: {
    typograffiti = nixpkgs.haskell.lib.doJailbreak
      (self.callCabal2nix "typograffiti" typograffiti-src {});
    gl = nixpkgs.haskell.lib.doJailbreak super.gl;
    harfbuzz-pure = let
      f = dep: pkg: nixpkgs.haskell.lib.addPkgconfigDepend pkg dep;
      in f nixpkgs.pcre2 (f nixpkgs.glib (f nixpkgs.freetype super.harfbuzz-pure));
  };
  haskellPackages = nixpkgs.haskell.packages.ghc961.override (old: {
    overrides = nixpkgs.lib.composeExtensions (old.overrides or (_: _: {})) overlay;
  });

in
{
  inherit haskellPackages;
  typograffiti = haskellPackages.typograffiti;
}
