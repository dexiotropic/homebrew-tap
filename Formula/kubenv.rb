class Kubenv < Formula
  desc "Strict variable substitution for Kubernetes manifests"
  homepage "https://github.com/dexiotropic/kubenv"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.4.1/kubenv_kubenv_0.4.1_darwin_arm64.tar.gz"
      sha256 "7a9718ec35f32a117366b5102f243624cb27c6f01f24a050329e9b0144fe6f88"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.4.1/kubenv_kubenv_0.4.1_darwin_amd64.tar.gz"
      sha256 "b94f7c665dad7ed82a193214e8b96c51e4d7a59f75cd8569f5503c735ff728e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.4.1/kubenv_kubenv_0.4.1_linux_arm64.tar.gz"
      sha256 "d5d438607fb6ca483efda38b587beb5626c453d01c871e8bc4da224a4c6c7404"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.4.1/kubenv_kubenv_0.4.1_linux_amd64.tar.gz"
      sha256 "e55d9b72a2a099cb90625d53a0f4d9f0d93e8271ec1d1ad50338c93abb3595bd"
    end
  end

  def install
    bin.install "kubenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubenv version")
  end
end
