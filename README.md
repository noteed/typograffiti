# Typograffiti
[GitHub](https://github.com/schell/typograffiti/) [Hackage](https://hackage.haskell.org/package/typograffiti) [Mirror](https://git.argonaut-constellation.org/~alcinnz/typograffiti) [alt issue tracker](https://todo.argonaut-constellation.org/~alcinnz/typograffiti)

Typograffiti aims to make working with text across a broad range of written languages in multimedia applications easy. Whilst exposing low-level APIs for use by fancier text layout/rendering engines.

Typograffiti is part of [The Argonaut Stack](https://argonaut-constellation.org/) browser engine.

## requirements
* opengl 3.x
* freetype 2.x
* harfbuzz 3.3+
* LibC++ (for Text dependency)

The demo program additionally requires SDL2.

# Using Nix

```
$ NIXPKGS_ALLOW_BROKEN=1 nix-build -I nixpkgs=channel:nixos-unstable -A typograffiti
$ result/bin/typograffiti
```

Currently, running the example in GHCi segfaults:

```
$ NIXPKGS_ALLOW_BROKEN=1 nix-shell -I nixpkgs=channel:nixos-unstable
$ runghc -isrc/ app/Main.hs
```
