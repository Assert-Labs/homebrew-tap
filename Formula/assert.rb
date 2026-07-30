# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.16/assert-darwin-arm64"
      sha256 "687f4eea626e47e89522d3b7c92b51f1fb848a25d71dd31e6826f0fe0ee1f7bf"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.16/assert-darwin-x64"
      sha256 "18f2f24c504f3b1f7b41c2dd3434304555e477cd08145ee7e222a9325af6f866"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.16/assert-linux-arm64"
      sha256 "c57908693443f75be55d36aefc97fdcbaab927b9cf5c1f47fe41502b6879f290"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.16/assert-linux-x64"
      sha256 "114d8f7d03825d68df51039730bf08165e7013bcef16b824df3305c83123ddb2"
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
