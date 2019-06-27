class Orion < Formula
  desc "orion private transaction manager"
  homepage "https://github.com/pegasyseng/orion"
  url "https://consensys.bintray.com/binaries/orion-1.1.0.zip"
  # update with: ./updateOrion.sh <new-version>
  sha256 "a86e25d3a8aa23ad53d173bc7f808b6105db14057ddcfe20a97740bfd491ca81"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/orion"
  end

  test do
    system "#{bin}/orion" "--version"
  end
end
