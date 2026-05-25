class Kubenv < Formula
  desc "Strict variable substitution for Kubernetes manifests"
  homepage "https://github.com/dexiotropic/kubenv"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.3.0/kubenv_kubenv_0.3.0_darwin_arm64.tar.gz"
      sha256 "e64d898da65a81e4e3df7d1b747a66f24362581cecdbb4ca008422e46229299b"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.3.0/kubenv_kubenv_0.3.0_darwin_amd64.tar.gz"
      sha256 "5aaf9711d5114e42cd6249757fd2b7c08e91eb1f51864f602415c3319d6fe446"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.3.0/kubenv_kubenv_0.3.0_linux_arm64.tar.gz"
      sha256 "ea2b918951220dfe0ff94c0d8ba2db2be47df9ee9f8b028c2b388b7b26bb3ff5"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.3.0/kubenv_kubenv_0.3.0_linux_amd64.tar.gz"
      sha256 "07bb3e61e9af3a91d73b75b54e23fcdcf9a53844d1f0500bf0ca14d3165e63aa"
    end
  end

  def install
    bin.install "kubenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubenv version")
  end
end
