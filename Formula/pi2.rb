class Pi2 < Formula
  desc "CLI for Pixela activity graphs and time tracking"
  homepage "https://github.com/a-know/pi2"
  url "https://github.com/a-know/pi2/archive/refs/tags/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "13b78dadbf951f661776cb5729bee43206b1e7c8b0b7f30937b1407326d41d28"
  license "MIT"

  depends_on "go" => :build

  on_macos do
    depends_on :macos => :big_sur
  end

  def install
    ENV["CGO_ENABLED"] = OS.mac? ? "1" : "0"
    system "go", "build", *std_go_args, "."
    doc.install "README.md", "README_ja.md"
  end

  def caveats
    <<~EOS
      Configure pi2 with:
        pi2 config

      On macOS, start the menu bar app with:
        pi2 menubar
      Use Quit in its popover before upgrading, then start it again afterward.
      Login startup is not installed automatically.
    EOS
  end

  test do
    assert_match "--refresh", shell_output("#{bin}/pi2 prompt --help")
    assert_match "--foreground", shell_output("#{bin}/pi2 menubar --help")
    config = testpath/"settings.yaml"
    pipe_output("#{bin}/pi2 --config #{config} config", "test-user\ntest-graph\ntest-token\n", 0)
    assert_match 'username: "test-user"', config.read
    assert_equal "", shell_output("#{bin}/pi2 --config #{config} prompt --no-refresh --color never")
  end
end
