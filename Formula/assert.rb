# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.17/assert-darwin-arm64"
      sha256 "4a439803b6e7c03507111106bce2c1df6807ca758880e0c8000c7a52434399cf"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.17/assert-darwin-x64"
      sha256 "4f1a665968bb48db88aafc25ff23877a695c974fbd3f6d29ae8525bdcaad8963"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.17/assert-linux-arm64"
      sha256 "f706f57bd895a5f85b41a194874c7d38e448d8aa8947e7890ac66369cd2e94d4"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.17/assert-linux-x64"
      sha256 "f80f5881f5ff166746771292e2c1faa712200d7d357a7af9281c45d88d688da3"
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
