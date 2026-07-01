# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.7/assert-darwin-arm64"
      sha256 "112503e5eeffaf70369bbe903f38349079a20794e8bf5987cbe2b57d47429267"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.7/assert-darwin-x64"
      sha256 "d58894833cbde9a88f257057f4f09e24b7315dd39d46d36ecaaefe44609ba7ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.7/assert-linux-arm64"
      sha256 "41276d93b7e437c4558226307b71976db15c61f965c71c0e7220d55db4df6e59"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.7/assert-linux-x64"
      sha256 "d1e3279d1130c024a64ac366cea37ce1561fe417ce639cf54cbb8bbd2238dffc"
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
