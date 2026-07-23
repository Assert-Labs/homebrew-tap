# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.12/assert-darwin-arm64"
      sha256 "a5cea7404b2221fc0cca2981b5ad9fe925212c9646340ea0812bc58d21041fe0"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.12/assert-darwin-x64"
      sha256 "750bdf39440cf4b0686d307ddbb9566ddb18804352ba878d843799cce6d81267"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.12/assert-linux-arm64"
      sha256 "0aa119766f0bbc30941b80512e5fb69b6129b8a8a9b3d708a3ef17efdfc78002"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.12/assert-linux-x64"
      sha256 "b2b9b3845c09ea7dff43ab350b7b50f099fddaa97f010e4dff1eaea6f67f5be5"
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
