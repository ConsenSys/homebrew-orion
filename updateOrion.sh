#!/bin/bash
set -euo pipefail
TEMP=`mktemp -d`

function cleanup() {
	rm -rf "${TEMP}"
}
trap cleanup EXIT

VERSION=${1?Must specify the orion version to get}
URL="https://consensys.bintray.com/binaries/orion-${VERSION}.zip"
echo "Downloading version ${VERSION} of orion from ${URL}..."
curl -o "${TEMP}/orion-${VERSION}.zip" -L --fail "${URL}"

unzip -t "${TEMP}/orion-${VERSION}.zip"

echo "Calculating new hash..."
HASH=`shasum -a 256 ${TEMP}/orion-${VERSION}.zip | cut -d ' ' -f 1`

cat > orion.rb <<EOF
class Orion < Formula
  desc "orion private transaction manager"
  homepage "https://github.com/pegasyseng/orion"
  url "${URL}"
  # update with: ./updateOrion.sh <new-version>
  sha256 "${HASH}"

  depends_on :java => "1.8+"

  def install
    prefix.install "lib"
    bin.install "bin/orion"
  end

  test do
    system "#{bin}/orion" "--version"
  end
end
EOF

echo "New url: ${URL}"
echo "New hash: ${HASH}"
echo "Success.  Commit the changes to orion.rb to release."
