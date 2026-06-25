# This file is rendered and pushed to Assert-Labs/homebrew-tap by the cli
# repo's release workflow (.github/workflows/release.yml). Do not edit the
# generated copy by hand; edit this template instead.
class Assert < Formula
  desc "Share session data from any coding agent"
  homepage "https://docs.assert.dev"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.2/assert-darwin-arm64"
      sha256 "be3b25b454749263cd43114403257ce4ac098a4be68517f78a9a32d2d5b7f24e"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.2/assert-darwin-x64"
      sha256 "0b4779fc77ad1501a22c0c86f25c8cd16b835be1d4912e34ffdff22bf27d18d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.2/assert-linux-arm64"
      sha256 "671af85824739bde936538441d4cee65f29be1d9bfba1241ee244ce0987a5a5e"
    end
    on_intel do
      url "https://github.com/Assert-Labs/cli/releases/download/v0.1.2/assert-linux-x64"
      sha256 "c3ffe4b57a0a970cf1bb70c75456bcf51b12ffacb563222ab810d221cd020d48"
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
