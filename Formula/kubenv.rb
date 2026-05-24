class Kubenv < Formula
  desc "Strict variable substitution for Kubernetes manifests"
  homepage "https://github.com/dexiotropic/kubenv"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.2.2/kubenv_kubenv_0.2.2_darwin_arm64.tar.gz"
      sha256 "9b576370c1d85d863ea9c39072a6a19ddaf7ffb7174e7c77267166a7539875a7"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.2.2/kubenv_kubenv_0.2.2_darwin_amd64.tar.gz"
      sha256 "2a31abecd1b280c38ed6b618c7c0bff265e88f8094e176fb10a2e213cb34be47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.2.2/kubenv_kubenv_0.2.2_linux_arm64.tar.gz"
      sha256 "1c2021caf5d99a29af9fee979eb378d094aaf519b4b742e44447127641c2a7bb"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.2.2/kubenv_kubenv_0.2.2_linux_amd64.tar.gz"
      sha256 "9311179709e061c26cf3072a1e85ac279bb27ba8eb7adb644f5498013792cc19"
    end
  end

  def install
    bin.install "kubenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubenv version")
  end
end
