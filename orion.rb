class Orion < Formula
  desc "orion private transaction manager"
  homepage "https://github.com/pegasyseng/orion"
  url "https://consensys.bintray.com/binaries/orion-1.4.0.zip"
  # update with: ./updateOrion.sh <new-version>
  sha256 "b19dff2c5d19dca1d4655adca9a811843f7d1654fa7155f37622c4a765491f15"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/orion"
  end

  test do
    system "#{bin}/orion" "--version"
  end
end
