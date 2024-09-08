# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=8
DESCRIPTION="GUI for manpages"
HOMEPAGE="https://github.com/zigalenarcic/mangl"
SRC_URI="https://github.com/zigalenarcic/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64"
PATCHES=(
	${FILESDIR}/"${PN}.patch"
)
DEPEND=(
	media-libs/glfw
)
