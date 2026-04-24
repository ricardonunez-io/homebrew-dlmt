class Dlmt < Formula
  desc "Download a site's llms.txt and all linked markdown/JSON/YAML resources"
  homepage "https://github.com/ricardonunez-io/dlmt"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.5/dlmt-macos-arm64.tar.gz"
      sha256 "6ab8db4231a9aba09bfac2b57d01a7dd7a51d7ddd624af26142caa65eab19fa7"

      def install
        bin.install "dlmt-macos-arm64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
    on_intel do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.5/dlmt-macos-x86_64.tar.gz"
      sha256 "871343d964d1c159b8a0683c4f8b55caf52fd23c858348bcb8fde7fcecd19632"

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
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.5/dlmt-linux-arm64.tar.gz"
      sha256 "acc009f6f18b6b4fcc5973e1f8fc3bc9fab0ce372ef3dbe5e71274275b406f31"

      def install
        bin.install "dlmt-linux-arm64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
    on_intel do
      url "https://github.com/ricardonunez-io/dlmt/releases/download/v0.1.5/dlmt-linux-x86_64.tar.gz"
      sha256 "c14645f98d05eb01161ff3d506dc5e2f878ee3eab37d192eca308d5126f6129b"

      def install
        bin.install "dlmt-linux-x86_64" => "dlmt"
        %w[download-llmstxt dl-llmstxt dl-mintlify download-mintlify].each do |a|
          bin.install_symlink "dlmt" => a
        end
      end
    end
  end

  test do
    assert_match "0.1.5", shell_output("#{bin}/dlmt --version")
  end
end
