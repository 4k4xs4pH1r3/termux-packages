TERMUX_PKG_HOMEPAGE=https://github.com/xyproto/o
TERMUX_PKG_DESCRIPTION="Small, fast and limited text editor"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="Alexander F. Rødseth <xyproto@archlinux.org>"
TERMUX_PKG_VERSION=2.60.0
TERMUX_PKG_SRCURL=https://github.com/xyproto/o/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=ee0a94a7bdf7b79c9c63acf4fbe587d8dc7cd97f8ff788207091ca2a9e8b4cdb
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_BREAKS="o"
TERMUX_PKG_REPLACES="o"

termux_step_make() {
	termux_setup_golang

	export GOPATH=$TERMUX_PKG_BUILDDIR
	mkdir -p "$GOPATH"/src/github.com/xyproto
	ln -sf "$TERMUX_PKG_SRCDIR" "$GOPATH"/src/github.com/xyproto/o

	cd "$GOPATH"/src/github.com/xyproto/o/v2
	go build
}

termux_step_make_install() {
	install -Dm700 -t "$TERMUX_PREFIX"/bin \
		"$GOPATH"/src/github.com/xyproto/o/v2/oribton
	ln -sfT oribton "$TERMUX_PREFIX"/bin/o
	install -Dm600 -t "$TERMUX_PREFIX"/share/man/man1 \
		"$TERMUX_PKG_SRCDIR"/o.1
}
