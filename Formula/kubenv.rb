class Kubenv < Formula
  desc "Strict variable substitution for Kubernetes manifests"
  homepage "https://github.com/dexiotropic/kubenv"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.3.1/kubenv_kubenv_0.3.1_darwin_arm64.tar.gz"
      sha256 "04d9e5ab34c73dce85f5f7eeec56a13539b703005793f9702bd03eebebebd84d"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.3.1/kubenv_kubenv_0.3.1_darwin_amd64.tar.gz"
      sha256 "e49887b764614ed268fb8c0265550840a0364c5c4df2b6c769b45cb9cd3da263"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.3.1/kubenv_kubenv_0.3.1_linux_arm64.tar.gz"
      sha256 "d293dd74da9c083baa245caea894bed5c0a0aa5f50ae826bc1906ea5c676d4fc"
    else
      url "https://github.com/dexiotropic/kubenv/releases/download/v0.3.1/kubenv_kubenv_0.3.1_linux_amd64.tar.gz"
      sha256 "9d2e5c12b9a56873bb76beeb04ee5ecef0b2402fae4610641f4e7d8a5bf5c45e"
    end
  end

  def install
    bin.install "kubenv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kubenv version")
  end
end
