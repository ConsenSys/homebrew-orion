class Orion < Formula
  desc "orion private transaction manager"
  homepage "https://github.com/pegasyseng/orion"
  url "https://consensys.bintray.com/binaries/orion-1.6.0.zip"
  # update with: ./updateOrion.sh <new-version>
  sha256 "c7dc9bd06379a9ff106732208738b8c4d71d44cd0755fcf4eed668195cebf65a"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/orion"
  end

  test do
    system "#{bin}/orion" "--version"
  end
end
