# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.3/assert-darwin-arm64"
      sha256 "9ba9e115197f172d9580076f074e91932493462cf5fada3e5430ea308cc7af82"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.3/assert-darwin-x64"
      sha256 "ea4e2b561054715ae9cef64064ff16a860740fe391bf9ac0255c82aba8297f95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.3/assert-linux-arm64"
      sha256 "0d863edadf1e913d36b433d9105c511683bd5a6dda3ac5d0ae72cfb0ee8c3f6b"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.3/assert-linux-x64"
      sha256 "02322d5251af25be446456c54ffbedf9c7e6fef96f40e58f493024d53f892e97"
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
