# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.4/assert-darwin-arm64"
      sha256 "2685f9fa7fb5160da9e5563ba827d2e2f8c884ccaf9cbd81d3081b9aa163c13c"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.4/assert-darwin-x64"
      sha256 "0f7f82fb533f07938e8222ccad6e280272bf3f1885a9c09ac72e2cf5b4bc1dd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.4/assert-linux-arm64"
      sha256 "06578f85ea8741970b4235005867c2db2cb00753bce9e8d356bcd8bdbeb5e27e"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.4/assert-linux-x64"
      sha256 "673cc4af879184f146586e939931e191363a110654bbf92ca61180e3b95aba03"
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
