class Kubenv < Formula
  desc "Strict variable substitution for Kubernetes manifests"
  homepage "https://github.com/dexiotropic/kubenv"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.4.0/kubenv_kubenv_0.4.0_darwin_arm64.tar.gz"
      sha256 "6d77b3bc4a5aac402ab9cdd55f144843dffc3d13d8d9f200c115d521dc5b9492"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.4.0/kubenv_kubenv_0.4.0_darwin_amd64.tar.gz"
      sha256 "278e216ac0b94878a1c2979dcd0ce163ce1a1da177602d1acfde5e9f78ea242a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.4.0/kubenv_kubenv_0.4.0_linux_arm64.tar.gz"
      sha256 "fd3d085e1a117959a4cbed711fd54fcb7af523ad57cb4433c1ae501ec1506917"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.4.0/kubenv_kubenv_0.4.0_linux_amd64.tar.gz"
      sha256 "aba0dd85eca6738c919af7ec383ba6884c214acc8492dbfead954a822fb1f985"
    end
  end

  def install
    bin.install "kubenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubenv version")
  end
end
