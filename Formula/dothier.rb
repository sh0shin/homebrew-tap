class Dothier < Formula
  desc "dothier"
  homepage "https://github.com/sh0shin/dothier"
  head "https://github.com/sh0shin/dothier.git",
    :branch => "main"
  bottle :unneeded

  def install
    bin.install "dothier"
  end

  test do
    system "#{bin}/dothier -h"
  end
end
