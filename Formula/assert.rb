# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.15/assert-darwin-arm64"
      sha256 "99670d8922d8a55fcfcdb18533fdcd7cb0e377d44256ab1ea938c84428645fde"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.15/assert-darwin-x64"
      sha256 "4c8b25f94d32fc362b54b26afa2060e3474831e8cd40ccb7f70e33d4ac9ae57a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.15/assert-linux-arm64"
      sha256 "0d8bf824130ecb93867ae4f1b4f6877faa15ae3b0c672ce4d3e5e4b301edc8b7"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.15/assert-linux-x64"
      sha256 "425d6bac06d7cecab96708217e72f39d8e3bfbe58f5d1fb8b80585c723597f19"
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
