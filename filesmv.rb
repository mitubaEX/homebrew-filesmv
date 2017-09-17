require 'formula'

HOMEBREW_FILESMV_VERSION='1.0'
class Pt < Formula
  homepage 'https://github.com/mitubaEX/filesmv'
  url 'https://github.com/mitubaEX/filesmv.git', :tag => "v#{HOMEBREW_FILESMV_VERSION}"
  version HOMEBREW_FILESMV_VERSION
  head 'https://github.com/mitubaEX/filesmv.git', :branch => 'master'

  depends_on 'go' => :build
  # depends_on 'hg' => :build

  def install
    ENV['GOPATH'] = buildpath
    # system 'go', 'get', 'github.com/shiena/ansicolor'
    # system 'go', 'get', 'github.com/monochromegane/terminal'
    # system 'go', 'get', 'github.com/jessevdk/go-flags'
    # system 'go', 'get', 'code.google.com/p/go.text/transform'
    # mkdir_p buildpath/'src/github.com/mitubaEX/filesmv'
    # ln_s buildpath/'search', buildpath/'src/github.com/mitubaEX/filesmv/.'
    system 'go', 'build', '-o', 'filesmv'
    bin.install 'filesmv'
  end
end
