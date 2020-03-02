class Orion < Formula
  desc "orion private transaction manager"
  homepage "https://github.com/pegasyseng/orion"
  url "https://consensys.bintray.com/binaries/orion-1.5.0.zip"
  # update with: ./updateOrion.sh <new-version>
  sha256 "24b5922ac1fffbf854c2605dc08ac2ed784cf3a7bb31c964404dbb84d0f8f074"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/orion"
  end

  test do
    system "#{bin}/orion" "--version"
  end
end
