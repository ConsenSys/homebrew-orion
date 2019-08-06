class Orion < Formula
  desc "orion private transaction manager"
  homepage "https://github.com/pegasyseng/orion"
  url "https://consensys.bintray.com/binaries/orion-1.3.1.zip"
  # update with: ./updateOrion.sh <new-version>
  sha256 "ddcc93334cb76365ade6a918c7bdeaa97b5dcae281413459b340462c11d642b3"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/orion"
  end

  test do
    system "#{bin}/orion" "--version"
  end
end
