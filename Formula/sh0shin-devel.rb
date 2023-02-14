require "digest"

class Sh0shinDevel < Formula
  desc "My development requirements"
  homepage "https://sh0shin.org/"
  url 'file://'+File.expand_path(__FILE__)
  sha256 Digest::SHA256.file(File.expand_path(__FILE__)).hexdigest
  license "BSD-3-Clause"
  version "1"
  revision 1

  depends_on "git"
  depends_on "git-crypt"
  depends_on "git-lfs"
  depends_on "pre-commit"
  depends_on "tig"

  depends_on "editorconfig-checker"
  depends_on "hadolint"
  depends_on "markdownlint-cli"
  depends_on "shellcheck"
  depends_on "yamllint"

  keg_only "it's used to install my development requirements only"

  def install
    bin.install_symlink libexec/"sh0shin-development"
  end
end
