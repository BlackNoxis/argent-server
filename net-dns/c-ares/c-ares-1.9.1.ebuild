# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

DESCRIPTION="C library that resolves names asynchronously"
HOMEPAGE="http://c-ares.haxx.se/"
SRC_URI="http://${PN}.haxx.se/download/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="static-libs"

DOCS=( AUTHORS CHANGES NEWS README RELEASE-NOTES TODO )

src_configure() {
	econf \
		--enable-nonblocking \
		--enable-symbol-hiding \
		$(use_enable static-libs static)
}

src_install() {
	default
	find "${ED}" -name "*.la" -exec rm {} + || die
}
