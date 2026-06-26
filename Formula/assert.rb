# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.6/assert-darwin-arm64"
      sha256 "56e0f22546acd92be49f2019f23eaaabc69b53c6ee0fefc0709fc799cc5ada1f"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.6/assert-darwin-x64"
      sha256 "5d0493fd9c959ed16165b1291c19d0f02de4670472bd4f09ab10a09844c7301d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.6/assert-linux-arm64"
      sha256 "f76053d2968b1ad7f019585a4755077e93f4ccc63d42ddf8a7ed466402e10b02"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.6/assert-linux-x64"
      sha256 "ded06cf8be05bcd01ce641180ed8348c2112d097373e29f8574c821766639fa8"
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
