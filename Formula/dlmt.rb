class Dlmt < Formula
  desc "Download a site's llms.txt and all linked markdown/JSON/YAML resources"
  homepage "https://github.com/ricardonunez-io/dlmt"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.4/dlmt-macos-arm64.tar.gz"
      sha256 "6a36ba881e1ee379465d77a9eb1c8794eabe136a701a83fd8c40c988ddd05ebd"

      def install
        bin.install "dlmt-macos-arm64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
    on_intel do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.4/dlmt-macos-x86_64.tar.gz"
      sha256 "2e7c43c7c88325e78098984b917846bfdb7224120a24bf33905c39be5cfd62ad"

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
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.4/dlmt-linux-arm64.tar.gz"
      sha256 "5c4bc90b32da75232df94e7cf901143f27d85e4f2058dac0f71110d9a2a9d025"

      def install
        bin.install "dlmt-linux-arm64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
    on_intel do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.4/dlmt-linux-x86_64.tar.gz"
      sha256 "73ff4cd3dc233eb2f936162a3536c6b437020376eef57d97e19902e6e83b6cbd"

      def install
        bin.install "dlmt-linux-x86_64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
  end

  test do
    assert_match "0.1.4", shell_output("#{bin}/dlmt --version")
  end
end
