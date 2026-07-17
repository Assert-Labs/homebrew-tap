# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.10/assert-darwin-arm64"
      sha256 "339f918a943be899d1b034c88e9797a805bdb48a4f35319f6ee61763a0ae3a0d"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.10/assert-darwin-x64"
      sha256 "db33bfd5fd05cc554b706327f4a34876ffa263c32238ba9f51caeb7adcf17e3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.10/assert-linux-arm64"
      sha256 "39af767d88e5fbddd89fc37e2878ac6ca0c52ea69d349ec8138909078a41545f"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.10/assert-linux-x64"
      sha256 "ca233905fff948bcc05b39ed9d9926d5cafa92a18804e882169b1dce51112025"
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
