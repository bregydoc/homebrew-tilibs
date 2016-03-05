class Libtigfm < Formula
  desc "Group file manager for connecting to Texas Instruments calculators"
  homepage "http://lpg.ticalc.org/prj_gfm/"
  url "http://www.ticalc.org/pub/unix/gfm.tar.gz"
  version "0.1"
  sha256 ""
  
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
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}",
                          "--enable-libusb10"
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
