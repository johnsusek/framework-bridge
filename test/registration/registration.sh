#!/bin/bash
set -e

mkdir -p test/registration/build
cd test/registration
xcodegen -s project.json -p build
cd build
xcodebuild -allowProvisioningUpdates -derivedDataPath ./build -scheme vk-app-test
./build/Build/Products/Debug/vk-app-test.app/Contents/MacOS/vk-app-test
