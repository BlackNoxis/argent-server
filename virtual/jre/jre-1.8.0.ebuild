# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="Virtual for Java Runtime Environment (JRE)"
SLOT="1.8"
# TODO: Temporarily dropped ~sparc-solaris and ~x86-solaris as oracle-jre-bin
#       no longer provides them. Also temporarily dropped ~ia64.
KEYWORDS="amd64"

RDEPEND="|| (
		=virtual/jdk-1.8.0*
		=dev-java/oracle-jre-bin-1.8.0*
	)"
DEPEND=""
