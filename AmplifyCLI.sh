#!/bin/bash
set -e

# update AMPLIFY CLI
OLD_DIR="$PWD"
TMP_DIR="$(mktemp -d)"
echo "Updating AMPLIFY CLI"
cd "${TMP_DIR}" || exit 1

curl -fSsl "https://aws-amplify.github.io/amplify-cli/install" -o "amplifycli.zip"
unzip -qq amplifycli.zip
sudo install --update
rm amplifycli.zip

cd "${OLD_DIR}" || exit 1
rm -rf "${TMP_DIR}"
				
echo "AMPLIFY CLI is installed in your workspace"