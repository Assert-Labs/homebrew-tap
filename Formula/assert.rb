# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.21/assert-darwin-arm64"
      sha256 "b9e13ed73a722762a3874f9c1e793cb28c62313224ee6c05267c8d4d9de897ad"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.21/assert-darwin-x64"
      sha256 "941f6a662e894fa635cda15d3b49db561f6c39d1063a7e35dedc462d36d33260"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.21/assert-linux-arm64"
      sha256 "09c744824e1662dad34a6c0d43812c2b0714aa665adce5d9a35d524175078ff9"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.21/assert-linux-x64"
      sha256 "da429043dcf8ca377542342a753e03d5d1471cd445ab4927dbe8e1e8257ff692"
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
