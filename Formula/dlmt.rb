class Dlmt < Formula
  desc "Download a site's llms.txt and all linked markdown/JSON/YAML resources"
  homepage "https://github.com/ricardonunez-io/dlmt"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.3/dlmt-macos-arm64.tar.gz"
      sha256 "1efe4c4ae69e7a743a80df4a9eb2c39903e72a8256dfaf7b336582a22e699c91"

      def install
        bin.install "dlmt-macos-arm64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
    on_intel do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.3/dlmt-macos-x86_64.tar.gz"
      sha256 "402e9f47b815361ef15c9e81420778a3ea0a2f860527c659269cfe54f0f64cca"

      def install
        bin.install "dlmt-macos-x86_64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.3/dlmt-linux-arm64.tar.gz"
      sha256 "bc8f70ec013529cff09af461e011fda22668e2f031a383b90ddc0ccb22f80545"

      def install
        bin.install "dlmt-linux-arm64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
    on_intel do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.3/dlmt-linux-x86_64.tar.gz"
      sha256 "346b94d0200b7b512c375aa4d851943e684d797ade1d5fc96ee1dd92ffd048be"

      def install
        bin.install "dlmt-linux-x86_64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
  end

  test do
    assert_match "0.1.3", shell_output("#{bin}/dlmt --version")
  end
end
