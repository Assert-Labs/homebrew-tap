# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.1/assert-darwin-arm64"
      sha256 "574abe51a94ec78d3d1f35d1ebd1d7b0d47a4941245f2a8807d6a1d817ac252d"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.1/assert-darwin-x64"
      sha256 "5292e9449bf458267f104a620fc685eaecb90502565481b7ebc706aae6cc5b92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.1/assert-linux-arm64"
      sha256 "b02c46c4711abb54a2d4f7c8e16e5ddf540fe156a8f2b7c750a740f5603d3de1"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.1/assert-linux-x64"
      sha256 "fc24ade29b89b8b8d142b7f646b0333bf2b13fcd08461ac08e2f9ed9a2f6e901"
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
