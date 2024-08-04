# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Proxy for using W3C WebDriver compatible clients to interact with Gecko-based browsers."
HOMEPAGE="https://hg.mozilla.org/mozilla-central/file/tip/testing/geckodriver https://github.com/mozilla/geckodriver"
SRC_URI="https://github.com/mozilla/geckodriver/tarball/3bcc92b964ce5719b4bd7077b6bf0056f6364cbe -> geckodriver-0.34.0-3bcc92b.tar.gz
https://regen.mordor/94/0c/1a/940c1a514df920426edd985277921828fb36711e60761bd2991a420fba575242a7cc78c7869b08a8974ed625f7a52c639977d0dada804401421466478ec72aae -> geckodriver-0.34.0-funtoo-crates-bundle-cba6ad45f78149d9b78be143c52ba825d15f1642190bf69296205f19019f2e44b48c9525cfd95b87fd18bf54391f6c19b2f322e7805c2a81c5f81fccf512f0b2.tar.gz"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="*"

DOCS=( README.md )

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/mozilla-geckodriver-* ${S} || die
}