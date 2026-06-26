# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.5/assert-darwin-arm64"
      sha256 "1064686cf5e431ee3a7d7fa8800a06e709b28a24f6f00352e7dc98163de6fdfd"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.5/assert-darwin-x64"
      sha256 "ff8174c29c8095436906cae1ca1c2eabcdbfabea112ead8131f2cc4bb51ee1e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.5/assert-linux-arm64"
      sha256 "fc7156e07b10353e5a46d097c8b62ec8e737aa04f9af5cb5e448ffb493f4ee72"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.5/assert-linux-x64"
      sha256 "48818f683a3547d8c396c098313b5c304d8bf2d5c85ae29f446da94429fa71c5"
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
