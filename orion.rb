class Orion < Formula
  desc "orion private transaction manager"
  homepage "https://github.com/consensys/orion"
  url "https://consensys.bintray.com/binaries/orion-20.10.1.zip"
  # update with: ./updateOrion.sh <new-version>
  sha256 "ce196ed77ac7914000eecf6ebb7b5f7dc9855ce9bb6774f8d3588f30d2446ddb"

  depends_on "openjdk" => "8+"

  def install
    prefix.install "lib"
    bin.install "bin/orion"
  end

  test do
    system "#{bin}/orion" "--version"
  end
end
