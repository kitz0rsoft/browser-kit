# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cargo

DESCRIPTION="Proxy for using W3C WebDriver compatible clients to interact with Gecko-based browsers."
HOMEPAGE="https://hg.mozilla.org/mozilla-central/file/tip/testing/geckodriver https://github.com/mozilla/geckodriver"
SRC_URI="https://github.com/mozilla/geckodriver/tarball/d139fa08c9c6f954bbd397dc29f646efc8aca023 -> geckodriver-0.36.0-d139fa0.tar.gz
https://regen.mordor/33/56/7d/33567d1746e94d4ab45a6eb9dffe0d6b1576d520cafc8fd2e8484812b4b94936adb4bfac9f6bc60cae58e79f86bb37543c1d73600ccdc8e810f4a36ac005ac29 -> geckodriver-0.36.0-funtoo-crates-bundle-2eb8a4ae9a7fd729ffc7cddadce33ddff9d8fe82765597a30303b24c68eb534d1b385dff7bebddeb805dff17f8bd113dbe5a93d8a0576a2b197495e07e2e7ee9.tar.gz"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="*"

DOCS=( README.md )

src_unpack() {
	cargo_src_unpack
	rm -rf ${S}
	mv ${WORKDIR}/mozilla-geckodriver-* ${S} || die
}