# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version ".0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v.0.1.2/assert-darwin-arm64"
      sha256 "edbf4265123884c69edf2b4898107483f6d4f8755a116342d62d92995e09de85"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v.0.1.2/assert-darwin-x64"
      sha256 "c81dee9e5efbeb2096c4061524bcddf1a8851312a54c1dfe0af11917f5c24f28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v.0.1.2/assert-linux-arm64"
      sha256 "5ed2f61f0cc167d91976cb16bd05601787f9cdf15cf6273245342f2ad94668ec"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v.0.1.2/assert-linux-x64"
      sha256 "8e367b31bd3afa2d850a96f666902154c704319f57a5bfcc38fb8cde28aadecb"
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
