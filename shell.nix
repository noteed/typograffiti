let

  content = import ./. {};
  hp = content.haskellPackages;
  haskell-tooling = with hp; [ ghc ];

in hp.shellFor {
  packages = p: [ p.typograffiti ];
  buildInputs = haskell-tooling;
}
