# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.20/assert-darwin-arm64"
      sha256 "56d334d40418942b7f5b3a73ea233963ecd11edfd6a1fe6db9093bcd4d6c6a8c"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.20/assert-darwin-x64"
      sha256 "e4914dac6ea6c4ead6d778904cb1b37f478d002fe303c3246c656696b87e5986"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.20/assert-linux-arm64"
      sha256 "796534098553c33ab88c9aaa805d909b32fa64339443dd226abbd03c3465204d"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.20/assert-linux-x64"
      sha256 "94cf9af8ec62527ad7436f41a17c8b6646438bd05b2355de853098ab0757ae02"
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
