class Ezasm < Formula
  desc "Assembly-like programming language for use in education"
  homepage "https://github.com/ezasm-org/EzASM"
  url "https://github.com/ezasm-org/EzASM-releases/releases/latest/download/EzASM-1.0.2-full.jar"
  sha256 "f200cad932cd80d889d07ae0e4a0b688909b0250c495ac708714fc5d9a1ef812"
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
