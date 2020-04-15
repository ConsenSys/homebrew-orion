class Orion < Formula
  desc "orion private transaction manager"
  homepage "https://github.com/pegasyseng/orion"
  url "https://consensys.bintray.com/binaries/orion-1.5.1.zip"
  # update with: ./updateOrion.sh <new-version>
  sha256 "0ba56ff9dc0ab073bbd0a06410fcbe9bd75c3912c7c081fb8bebda6c34bb990a"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/orion"
  end

  test do
    system "#{bin}/orion" "--version"
  end
end
