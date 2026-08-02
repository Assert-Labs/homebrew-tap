# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.19/assert-darwin-arm64"
      sha256 "fb1919506149b013e18e7ebc9ca514a842ef779f8a9d8f3276259921dcb6d0a7"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.19/assert-darwin-x64"
      sha256 "96cbb6c7c06fe6a59883d58a200ada422524d9df3b84b47e3e9832e9bdaa70a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.19/assert-linux-arm64"
      sha256 "8fdcbd879e59298a11f9f90b9cfc1e1908d03133d644f496ce7ab18c2fdf288b"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.19/assert-linux-x64"
      sha256 "a28c811781e3a4019b19f682470a863b5076a74ab4731317cb5d0ece37ab8cc0"
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
