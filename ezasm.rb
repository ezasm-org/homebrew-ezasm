class Ezasm < Formula
  desc "Assembly-like programming language for use in education"
  homepage "https://github.com/ezasm-org/EzASM"
  url "https://github.com/ezasm-org/EzASM-releases/releases/latest/download/EzASM-1.0.0-full.jar"
  sha256 "625620098438cac98a293a88e12d34db9727cac8a34d93096180e065115920cf"
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
