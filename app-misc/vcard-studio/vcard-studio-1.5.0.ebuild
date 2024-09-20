# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit rpm
QA_PREBUILT="*"
DESCRIPTION="GUI for vcards"
HOMEPAGE="https://app.zdechov.net/vcard-studio/"
SRC_URI="https://svn.zdechov.net/${PN}/bin/${P}.x86_64.rpm"
S="${WORKDIR}"
LICENSE="public-domain"
SLOT="0"
KEYWORDS="~amd64"

src_install() {
	doins -r ${S}/*
	fperms 755 /usr/bin/vCardStudio
}
