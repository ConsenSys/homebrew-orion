class Orion < Formula
  desc "orion private transaction manager"
  homepage "https://github.com/consensys/orion"
  url "https://consensys.bintray.com/binaries/orion-20.10.0.zip"
  # update with: ./updateOrion.sh <new-version>
  sha256 "905e5ae3460d9b6c694bcc891e7a91869ae3cd4c4c2a4cac333ffede90344da9"

  depends_on "openjdk@8"

  def install
    prefix.install "lib"
    bin.install "bin/orion"
  end

  test do
    system "#{bin}/orion" "--version"
  end
end
