# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="3"

DESCRIPTION="Virtual for acl support (sys/acl.h)"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="amd64"
IUSE="static-libs"

DEPEND=""
RDEPEND="kernel_linux? ( sys-apps/acl[static-libs?] )
	kernel_FreeBSD? ( sys-freebsd/freebsd-lib )"
