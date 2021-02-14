# dothier homebrew formula
class Dothier < Formula
  desc "Dotfiles management with dothier"
  homepage "https://sh0shin.org/dothier"
  # dothier using github tags
  url "https://github.com/sh0shin/dothier/archive/v0.2.1.tar.gz"
  sha256 "7fa8ce47a967941c0381075913c4b42e42e1a458640a4c5cd527f9f58ec22cc3"
  license "BSD-3-Clause"
  head "https://github.com/sh0shin/dothier.git"

  bottle :unneeded

  def install
    bin.install "dothier"
    pkgshare.install "README.md"
    pkgshare.install "gitsrc.sample"
    pkgshare.install "hier.sample"
  end

  test do
    system "#{bin}/dothier", "-h"
  end
end
