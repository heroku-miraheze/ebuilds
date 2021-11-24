# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
 
EAPI=8
 
DESCRIPTION="Caprice32"
HOMEPAGE="https://github.com/ColinPitrat/caprice32"
EGIT_REPO_URI="https://github.com/ColinPitrat/caprice32.git"
 
LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
 
DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""
src_compile() {
	emake \
		$(usex btrfs "ENABLE_BTRFS=1" "") \
		$(usex hardened "HARDEN=1" "")
}

src_install() {
	emake install \
		DESTDIR="${D}" \
		PREFIX="${EPREFIX}"/usr
}
