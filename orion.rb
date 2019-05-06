class Orion < Formula
  desc "orion private transaction manager"
  homepage "https://github.com/pegasyseng/orion"
  url "https://consensys.bintray.com/binaries/orion-1.0.0.zip"
  # update with: ./updateOrion.sh <new-version>
  sha256 "0f25cf48624e5193c1421d5cbc8c9e85de4cae2c7601b530daa1d937b9010211"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/orion"
  end

  test do
    system "#{bin}/orion" "--version"
  end
end
