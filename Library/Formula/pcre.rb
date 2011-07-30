require 'formula'

class Pcre < Formula
  url 'ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.12.tar.gz'
  homepage 'http://www.pcre.org/'
  md5 'fa69e4c5d8971544acd71d1f10d59193'

  fails_with_llvm "Bus error in ld on SL 10.6.4"

  def options
    [["--universal", "Build a universal binary."]]
  end

  def install
    ENV.universal_binary if ARGV.build_universal?

    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--enable-utf8",
                          "--enable-unicode-properties",
                          "--enable-pcregrep-libz"
    system "make test"
    system "make install"
  end
end
