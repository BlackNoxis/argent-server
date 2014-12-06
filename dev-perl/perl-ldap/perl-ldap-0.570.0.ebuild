# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

MODULE_AUTHOR=MARSCHAP
MODULE_VERSION=0.57
inherit perl-module

DESCRIPTION="A collection of perl modules which provide an object-oriented interface to LDAP servers."

SLOT="0"
KEYWORDS="amd64"
IUSE="sasl xml ssl"

RDEPEND="
	dev-perl/Convert-ASN1
	dev-perl/URI
	sasl? (
		virtual/perl-Digest-MD5
		dev-perl/Authen-SASL
	)
	xml? (
		dev-perl/XML-Parser
		dev-perl/XML-SAX
		dev-perl/XML-SAX-Writer
	)
	ssl? (
		>=dev-perl/IO-Socket-SSL-1.26
	)"
DEPEND="${RDEPEND}"

#SRC_TEST=do
