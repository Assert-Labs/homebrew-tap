# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.18/assert-darwin-arm64"
      sha256 "d532135c3e8a562297f7b02b5bdce1624cab67af0737b8a496df1c06b00d4b06"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.18/assert-darwin-x64"
      sha256 "d7051fe8a23ab653c856bbb73c398491ba62128dd3b37b2e7ed63a62e203435f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.18/assert-linux-arm64"
      sha256 "ff6c2c784a1fa11bef5076acac840a4dd316c1eb0d92ce1cc3988a67d26db333"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.18/assert-linux-x64"
      sha256 "16df2baa9b2b9ef06d5979fcb59b160727cb6e739deb204a18d6891507fa03d3"
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
