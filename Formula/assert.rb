# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.6/assert-darwin-arm64"
      sha256 "9aa8e0b4721b99018a5b24777a5f95079f1628688502b56b9aff7790be23eaec"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.6/assert-darwin-x64"
      sha256 "20fc6833f651130d35ee4edccbda6ac23a9312ad97ac10ae56beacf00842e123"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.6/assert-linux-arm64"
      sha256 "006d3bdf9baa3873f16e8b46612dab8c0957b4c78bfd04f0e12e86abd60c615f"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.6/assert-linux-x64"
      sha256 "1acd978c4957d238195a3af9c479c77fa113f0764e5488139dc863a028f4a100"
    end
  end

  def install
    bin.install Dir["assert-*"].first => "assert"
  end

  def caveats
    <<~EOS
      To install Assert hooks for your coding agents, run:
        assert install
    EOS
  end

  test do
    assert_match "Usage", shell_output("#{bin}/assert help")
  end
end
