# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Waterfox Web Browser"
HOMEPAGE="https://waterfox.net"
SRC_URI="https://cdn1.waterfox.net/waterfox/releases/G${PV}/Linux_x86_64/waterfox-G${PV}.tar.bz2"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
QA_PREBUILT="*"
S="${WORKDIR}/waterfox"

src_install() {
	dodir /opt
	dodir /opt/bin
	cp -r "${S}/" "${D}/opt" || die "error"
	dosym "${EPREFIX}/opt/waterfox/waterfox" /opt/bin/waterfox
}
