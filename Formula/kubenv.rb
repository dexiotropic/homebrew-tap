class Kubenv < Formula
  desc "Strict variable substitution for Kubernetes manifests"
  homepage "https://github.com/dexiotropic/kubenv"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.4.2/kubenv_kubenv_0.4.2_darwin_arm64.tar.gz"
      sha256 "812e88f7f7b53c0dcebdf2b32a31575deb7b087836586d9ddaf242f58a2093e8"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.4.2/kubenv_kubenv_0.4.2_darwin_amd64.tar.gz"
      sha256 "bfe9b91ea11d7666323948cdd9bb382d17f6d4c841696999b6d4620259bf6107"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.4.2/kubenv_kubenv_0.4.2_linux_arm64.tar.gz"
      sha256 "aaeeae460582110fe6c2918fd70b41ad089d4d5b625b9d64cabae3824c966c8e"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.4.2/kubenv_kubenv_0.4.2_linux_amd64.tar.gz"
      sha256 "d76ad4ac4288e3646677b2972a02bc40ff6b2af8e8795de49c8f5b4f7763f501"
    end
  end

  def install
    bin.install "kubenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubenv version")
  end
end
