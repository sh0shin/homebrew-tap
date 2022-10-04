require "digest"

class Sh0shinNetwork < Formula
  desc "My network requirements"
  homepage "https://sh0shin.org/"
  url 'file://'+File.expand_path(__FILE__)
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  license "BSD-3-Clause"
  version "1"
  revision 0

  depends_on "autossh"
  depends_on "fping"
  depends_on "mtr"
  depends_on "nmap"
  depends_on "socat"
  depends_on "telnet"

  keg_only "it's used to install my network requirements only"

  def install
    bin.install_symlink libexec/"sh0shin-network"
  end
end
