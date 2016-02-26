class Tilp < Formula
  desc "TiLP is a linking program; it allows you to connect your Texas Instruments (TI) graphing calculator to a computer/workstation and transfers data between them. TiLP is free software and licensed under the GNU General Public License (GPL)."
  homepage "http://lpg.ticalc.org/prj_tilp/index.html"
  url "http://www.ticalc.org/pub/unix/tilp.tar.gz"
  version "0.1"
  sha256 "3c484085a79b73cd8cc6370ea54fc20afb93839b3f65ff2c6a9f08a2f604ac28"
  
  depends_on "autoconf"
  depends_on "automake"
  depends_on "pkg-config"
  depends_on "libtool"
  depends_on "libticonv"
  depends_on "libtifiles"
  depends_on "libticalcs"
  depends_on "libticables"

  def install
    system "./configure", "make", "install"
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
