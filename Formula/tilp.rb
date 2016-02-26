class Tilp < Formula
  desc "TiLP is a linking program; it allows you to connect your Texas Instruments (TI) graphing calculator to a computer/workstation and transfers data between them. TiLP is free software and licensed under the GNU General Public License (GPL)."
  homepage "http://lpg.ticalc.org/prj_tilp/index.html"
  url "http://www.ticalc.org/pub/unix/tilp.tar.gz"
  version "0.1"
  sha256 "9a6a872af0d30cb2b0ce720edc8333cb79067cc22133727420229f069921fb97"
  
  depends_on "autoconf"
  depends_on "automake"
  depends_on "pkg-config"
  depends_on "libxml2"
  depends_on "gtk"
  depends_on "libtool"
  depends_on "libticonv"
  depends_on "libtifiles"
  depends_on "libticalcs"
  depends_on "libticables"

  def install
    system "./configure"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test libticables`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
