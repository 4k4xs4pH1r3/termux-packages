TERMUX_PKG_HOMEPAGE="http://www.haskell.org/cabal/"
TERMUX_PKG_DESCRIPTION="The command-line interface for Cabal and Hackage."
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="Aditya Alok <dev.aditya.alok@gmail.com>"
TERMUX_PKG_VERSION="3.6.2.0"
TERMUX_PKG_SRCURL="https://hackage.haskell.org/package/cabal-install-${TERMUX_PKG_VERSION}/cabal-install-${TERMUX_PKG_VERSION}.tar.gz"
TERMUX_PKG_SHA256="dcf99e1d5f1c6e569e7386312fe96e9804b3cfb2d4f17ded1e01f60149bd3036"
TERMUX_PKG_BUILD_IN_SRC=true
TERMUX_PKG_DEPENDS="ghc-libs, haskell-edit-distance, haskell-zlib, haskell-http, haskell-network-uri, haskell-regex-base, haskell-async, haskell-lukko, haskell-cabal, haskell-resolv, haskell-echo, haskell-random, haskell-hashable, haskell-cryptohash-sha256, haskell-tar, haskell-base16-bytestring, haskell-hackage-security, haskell-regex-posix"
TERMUX_PKG_IS_HASKELL_LIB=false

