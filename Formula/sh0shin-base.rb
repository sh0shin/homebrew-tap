require "digest"

class Sh0shinBase < Formula
  desc "My base requirements"
  homepage "https://sh0shin.org/"
  url 'file://'+File.expand_path(__FILE__)
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  license "BSD-3-Clause"
  version "1"
  revision 1

  depends_on "bash"
  depends_on "bash-completion@2"
  depends_on "coreutils"
  depends_on "md5deep"
  depends_on "midnight-commander"
  depends_on "ncdu"
  depends_on "recode"
  depends_on "starship"
  depends_on "tmux"
  depends_on "tree"
  depends_on "vim"

  depends_on "ddrescue"
  depends_on "bat"

  keg_only "it's used to install my base requirements only"

  def install
    bin.install_symlink libexec/"sh0shin-base"
  end
end
