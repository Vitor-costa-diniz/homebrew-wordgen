class Wordgen < Formula
  desc "Cmd line tool to play word search game"
  homepage "https://github.com/Vitor-costa-diniz/WordGen"
  url "https://github.com/Vitor-costa-diniz/WordGen.git", tag: "1.0.1", revision: "9eea226095123c247e92cfe9fdb0661f769513ae"
  license "MIT"
  head "https://github.com/Vitor-costa-diniz/WordGen.git", branch: "main"

  depends_on xcode: ["15.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/wordgen"
  end
end
