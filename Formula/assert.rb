# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.8/assert-darwin-arm64"
      sha256 "f94c8053cd5c8ba2967f9c981d79bde6a3e9cb9ab28993bda6bb79c92aaaa3b5"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.8/assert-darwin-x64"
      sha256 "8434ac5e537fc13967df852b60b5eeb26928f6a4db946f2029690e61f2ced1a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.8/assert-linux-arm64"
      sha256 "1b11100e51c7f7d5ebe788cae4041578ecc3910ac97766e6803651a2c848f9cb"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.8/assert-linux-x64"
      sha256 "a024717e11f63539df7ff9d30221efcba171055f37c94173c8c0110176f885e8"
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
