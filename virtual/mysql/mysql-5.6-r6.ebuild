# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit multilib-build

DESCRIPTION="Virtual for MySQL database server"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0/18"
KEYWORDS="amd64"
IUSE="embedded static static-libs"

DEPEND=""
RDEPEND="
	virtual/libmysqlclient[static-libs?,${MULTILIB_USEDEP}]
	embedded? (
		|| (
			=dev-db/mariadb-10.1*[client-libs(+),embedded,static=]
			=dev-db/mariadb-10.0*[client-libs(+),embedded,static=]
			=dev-db/mysql-${PV}*[client-libs(+),embedded,static=]
			=dev-db/percona-server-${PV}*[client-libs(+),embedded,static=]
			=dev-db/mariadb-galera-10.0*[client-libs(+),embedded,static=]
			=dev-db/mysql-cluster-7.3*[client-libs(+),embedded,static=]
		)
	)
	!embedded? (
		|| (
			=dev-db/mariadb-10.1*[-embedded,static=]
			=dev-db/mariadb-10.0*[-embedded,static=]
			=dev-db/mysql-${PV}*[-embedded,static=]
			=dev-db/percona-server-${PV}*[-embedded,static=]
			=dev-db/mariadb-galera-10.0*[-embedded,static=]
			=dev-db/mysql-cluster-7.3*[-embedded,static=]
		)
	)
"