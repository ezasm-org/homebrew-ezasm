class Ezasm < Formula
  desc "Assembly-like programming language for use in education"
  homepage "https://github.com/ezasm-org/EzASM"
  url "https://github.com/ezasm-org/EzASM-releases/releases/latest/download/EzASM-1.4.f4aa46e8143b2ec07f881a9454d8eb180a90bbcd1bbd16bee385dead0dabdaf8-beta-full.jar"
  sha256 "f4aa46e8143b2ec07f881a9454d8eb180a90bbcd1bbd16bee385dead0dabdaf8"
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
