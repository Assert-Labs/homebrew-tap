# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.11/assert-darwin-arm64"
      sha256 "1d63f259eef16586f02ae94e8228d8e3a7a09ebdb5762d3a3da7321ea71c2669"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.11/assert-darwin-x64"
      sha256 "39efe708a249a86eff8b6efaeba0334694d96e94ad81618d5cb06a5b197dbdf2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.11/assert-linux-arm64"
      sha256 "cf36e5dbec56980cb310b1a93448d3200ec5850dc202de734fd6493fa25b54cd"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.11/assert-linux-x64"
      sha256 "d6b5339b8daf7e49fdc28c63dc112252b92545b26b192bf01f1b527f07b69c29"
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
