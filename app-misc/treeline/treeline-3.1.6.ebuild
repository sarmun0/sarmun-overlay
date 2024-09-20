# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=8
#PYTHON_COMPAT=(python3_{10,11,12})
#inherit distutils-r1
DESCRIPTION="Simple data collection tool"
HOMEPAGE="https://treeline.bellz.org"
SRC_URI="https://github.com/doug-101/TreeLine/releases/download/v${PV}/${P}.tar.gz"
S="${WORKDIR}/TreeLine"
LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
	python install.py -p "${D}/usr" -d "${D}/usr/share/doc/${PF}"
}
