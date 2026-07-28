# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.14/assert-darwin-arm64"
      sha256 "7cc0692deab482f50309afaf800abcb7d821481264636b170e21bf40380838d6"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.14/assert-darwin-x64"
      sha256 "5969fe4e2992fb9185dbaa4e88639b996ea4171b69c318a6588d9ab50faa804a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.14/assert-linux-arm64"
      sha256 "66a65ba845b140ab4a89aa789c1cd48ddf6e0338702a4daa690d70e08a2c30a7"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.14/assert-linux-x64"
      sha256 "300e6cc1badf59a811db632d96f04b5aa3f80350a3a2d9a6b85d18b204d60173"
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
