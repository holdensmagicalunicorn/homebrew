require 'formula'

class Agner < Formula
  head "https://github.com/agner/agner.git", :branch => "master"
  homepage 'http://erlagner.org/'

  depends_on 'erlang'
  depends_on 'rebar'

  def install
    system "make"
    system "./agner install agner"
  end
end
