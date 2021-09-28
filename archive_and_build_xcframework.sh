rm -r ./archives

BUILD_CONFIGURATION='Production'

# Unlimint-UI build

xcodebuild archive \
  -configuration $BUILD_CONFIGURATION \
  -scheme FLEX \
  -destination "generic/platform=iOS Simulator" \
  -archivePath "archives/FLEX-Simulator" \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive \
  -configuration $BUILD_CONFIGURATION \
  -scheme FLEX \
  -destination generic/platform=iOS \
  -archivePath "archives/FLEX" \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

cp -r ./archives/FLEX-Simulator.xcarchive/Products/@rpath/. ./archives/simulator
cp -r ./archives/FLEX.xcarchive/Products/@rpath/. ./archives/ios

xcodebuild -create-xcframework \
           -framework archives/ios/FLEX.framework \
           -framework archives/simulator/FLEX.framework \
           -output archives/FLEX.xcframework
