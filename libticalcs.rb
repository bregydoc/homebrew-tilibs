class Libticalcs < Formula
  desc "Calculator lib for other Texas Instruments calculator libs"
  homepage "https://github.com/debrouxl/tilibs/tree/master/libticalcs/trunk"
  url "https://github.com/debrouxl/tilibs/archive/master.zip"
  version "0.1"
  sha256 "3c484085a79b73cd8cc6370ea54fc20afb93839b3f65ff2c6a9f08a2f604ac28"
  
  depends_on "autoconf"
  depends_on "automake"
  depends_on "pkg-config"
  depends_on "libtool"
  depends_on "glib"
  depends_on "libticables"
  depends_on "libticonv"
  depends_on "libtifiles"
  
  def install
    cd "libticalcs/trunk/" do
      system "autoreconf", "-i", "-v", "-f"
      system "./configure", "--disable-dependency-tracking",
                            "--disable-silent-rules",
                            "--prefix=#{prefix}"
      system "make", "install"
    end
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
