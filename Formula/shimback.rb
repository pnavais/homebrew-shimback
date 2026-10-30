class Shimback < Formula
  desc "Run a primary command, transparently fall back to another"
  homepage "https://github.com/pnavais/shimback"
  version "0.3.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/pnavais/shimback/releases/download/v0.3.0/shimback-macos-arm64.tar.gz"
      sha256 "54a9856f82d0ecc7aae483e97140a1cc1edda2d781f287d4889f416e53824bac"
    end
    on_intel do
      url "https://github.com/pnavais/shimback/releases/download/v0.3.0/shimback-macos-x86_64.tar.gz"
      sha256 "dea793b56a51749f86a76be5816f4dfd3f5d79cb6bc4f8c5da5ac2fabaeee67d"
    end
  end

  # The release tarball extracts into a versioned subdirectory
  # (shimback-macos-arm64/ or shimback-macos-x86_64/, picked above by
  # on_arm/on_intel) -- globbed rather than hardcoded so this install step
  # doesn't need its own arch branch on top of the one above.
  def install
    bin.install Dir["shimback-macos-*/shimback"].first
    man1.install Dir["shimback-macos-*/shimback.1"].first
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/shimback --version")
  end
end
