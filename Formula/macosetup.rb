# macosetup homebrew formula
class Macosetup < Formula
  desc "Bash script based macOS setup environment"
  homepage "https://sh0shin.org/macosetup"
  # macosetup using github tags
  #url "https://github.com/sh0shin/macosetup/archive/v0.0.1.tar.gz"
  #sha256 ""
  license "BSD-3-Clause"
  head "https://github.com/sh0shin/macosetup.git", branch: "devel"

  bottle :unneeded

  def install
    bin.install "macosetup"
    pkgetc.install "etc/default.cfg"
    pkgshare.install "share/applications"
    pkgshare.install "share/files"
    pkgshare.install "share/homebrew"
    pkgshare.install "share/misc"
    pkgshare.install "share/shell"
    pkgshare.install "share/system_preferences"
  end

  test do
    system "#{bin}/macosetup", "-h"
  end
end
