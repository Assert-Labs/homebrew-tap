# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.9/assert-darwin-arm64"
      sha256 "e51e5baf9eabd6ee3e549f61977369f832ed0557d94da34c4c845e1e0b3e87b6"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.9/assert-darwin-x64"
      sha256 "e18ba396cafd0af698894c4abb3c6878768d8e4a2c31a6215fec5c1a65843636"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.9/assert-linux-arm64"
      sha256 "329db36ec4d310b0566d3043dbc02642a87f5e9dadcd4bef852a579b4e02167a"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.9/assert-linux-x64"
      sha256 "39dc8d8e15c06eebe9ac8cdf4d7ec6c853a9cb991a3cae7765ade717eaa9ef97"
    end
  end

  def install
    bin.install Dir["assert-*"].first => "assert"
  end

  def caveats
    <<~EOS
      To initialize Assert hooks for your coding agents, run:
        assert init
    EOS
  end

  test do
    assert_match "Usage", shell_output("#{bin}/assert help")
  end
end
