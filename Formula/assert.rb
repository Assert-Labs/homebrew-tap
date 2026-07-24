# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.13/assert-darwin-arm64"
      sha256 "95447e9a0cab58728739a1f5c036ea7190a04af29502ef5add06b1602f728579"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.13/assert-darwin-x64"
      sha256 "cf8df0ec5164beb89255d7c94565420a673fbb6e5da5d43b9a4e8211d8fa3112"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.13/assert-linux-arm64"
      sha256 "d88bd713156f637b5b60ebf9d00de3fa4512c4a3e0a95c695811a9bab5e27e9b"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.13/assert-linux-x64"
      sha256 "84e78bdf75be3820f8c405287e0605c3852a814159ec8ac9d7c936589982a0ad"
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
