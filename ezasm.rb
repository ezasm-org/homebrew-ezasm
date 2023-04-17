class Ezasm < Formula
  desc "Assembly-like programming language for use in education"
  homepage "https://github.com/ezasm-org/EzASM"
  url "https://github.com/ezasm-org/EzASM-releases/releases/latest/download/EzASM-1.4.1-beta-full.jar"
  sha256 "048976a007f1d3fa7270458ddaeda20bb2606ad4666158d2140c4d939fdd70e1"
  license "MIT"

  livecheck do
    url "https://github.com/ezasm-org/EzASM-releases/releases/latest"
    strategy :page_match
    regex(%r{href=.*?/EzASM-(.*?)-full.jar}i)
  end

  depends_on "openjdk@17"

  def install
    bin.install "EzASM-#{version}-full.jar" => "ezasm"
  end

  test do
    puts shell_output("#{bin}/ezasm --version")
  end
end
