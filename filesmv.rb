require 'formula'

HOMEBREW_FILESMV_VERSION='1.0'
class Filesmv < Formula
  homepage 'https://github.com/mitubaEX/filesmv'
  # url 'https://github.com/mitubaEX/filesmv.git', :tag => "v#{HOMEBREW_FILESMV_VERSION}"
  url 'https://github.com/mitubaEX/filesmv.git', :tag => "master"
  version HOMEBREW_FILESMV_VERSION
  head 'https://github.com/mitubaEX/filesmv.git', :branch => 'master'

  depends_on 'go' => :build
  # depends_on 'hg' => :build

  def install
    ENV['GOPATH'] = buildpath
    system 'go', 'build', '-o', 'filesmv'
    bin.install 'filesmv'
  end
end
