# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

MODULE_AUTHOR=SHLOMIF
MODULE_VERSION=2.71
inherit perl-module

DESCRIPTION="Work with IO sockets in ipv6"

SLOT="0"
KEYWORDS="amd64"
IUSE=""

RDEPEND="dev-perl/Socket6"
DEPEND="${RDEPEND}
	virtual/perl-Module-Build"

# Disabling tests since they seem to be more trouble than worth, esp. in re bug
# 115004
#SRC_TEST="do"
