# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
DESCRIPTION="Userspace utils for fs-verity"
HOMEPAGE="https://kernel.org"
SRC_URI="https://git.kernel.org/pub/scm/fs/fsverity/fsverity-utils.git/snapshot/${P}.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RDEPEND=">=dev-libs/openssl-1.0.0"
DEPEND="${RDEPEND}"
inherit linux-info
pkg_pretend() {
	CONFIG_CHECK="~FS_VERITY"
	check_extra_config
}
src_install() {
	emake \
		PREFIX="${D}"/usr \
		MANDIR="${D}"/usr/share/man \
		INFODIR="${D}"/usr/share/info \
		LIBDIR="${D}"/usr/$(get_libdir) \
		install
}
