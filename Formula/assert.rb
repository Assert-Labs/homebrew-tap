# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.22"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.22/assert-darwin-arm64"
      sha256 "bd9d7b80c098fc777d1fe1c017e5dfafbd825754e59e5103cd07598f06a56e3f"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.22/assert-darwin-x64"
      sha256 "e2e9c2bcc6f9fc8251422757060bcd13b9dfbfe2e3ba9d9979fc166b3996b334"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.22/assert-linux-arm64"
      sha256 "b712022eadd99c614d96ba2af06bc1962b4410bf6c1d47329e2c86fc45a3a560"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.22/assert-linux-x64"
      sha256 "337f8267732f33633730f3afa6bd88935ef171d6c6475e2cf7966b2a8451250f"
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
