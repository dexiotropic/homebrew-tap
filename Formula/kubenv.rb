class Kubenv < Formula
  desc "Strict variable substitution for Kubernetes manifests"
  homepage "https://github.com/dexiotropic/kubenv"
  version "0.3.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.3.3/kubenv_kubenv_0.3.3_darwin_arm64.tar.gz"
      sha256 "8b73fcabc8a6a76bfcca6c140a394412d5955717222da2cce4f9f4a2752464df"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.3.3/kubenv_kubenv_0.3.3_darwin_amd64.tar.gz"
      sha256 "ffa17a33ece760770f60307282845f1f2bab389c2fbe96b466425524c8e22696"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.3.3/kubenv_kubenv_0.3.3_linux_arm64.tar.gz"
      sha256 "89c5e80b973854aeab5f98f37365f927fb509bf567500107d42df349413d1581"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.3.3/kubenv_kubenv_0.3.3_linux_amd64.tar.gz"
      sha256 "d6c80836c8548797c9f6f23cf06a644cccd9b1e86722617332da572fcec51cb7"
    end
  end

  def install
    bin.install "kubenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubenv version")
  end
end
