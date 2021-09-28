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

# # Unlimint-Core build

# xcodebuild archive \
#   -workspace ../UnlimintSDK.xcworkspace \
#   -configuration $BUILD_CONFIGURATION \
#   -scheme UnlimintSDK-Core \
#   -destination "generic/platform=iOS Simulator" \
#   -archivePath "archives/UnlimintSDK-Core-Simulator" \
#   SKIP_INSTALL=NO \
#   BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# xcodebuild archive \
#   -workspace ../UnlimintSDK.xcworkspace \
#   -configuration $BUILD_CONFIGURATION \
#   -scheme UnlimintSDK-Core \
#   -destination generic/platform=iOS \
#   -archivePath "archives/UnlimintSDK-Core" \
#   SKIP_INSTALL=NO \
#   BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# cp -r ./archives/UnlimintSDK-Core-Simulator.xcarchive/Products/Library/Frameworks/. ./archives/simulator
# cp -r ./archives/UnlimintSDK-Core.xcarchive/Products/Library/Frameworks/. ./archives/ios

# xcodebuild -create-xcframework \
#            -framework archives/ios/UnlimintSDK_Core.framework \
#            -framework archives/simulator/UnlimintSDK_Core.framework \
#            -output archives/UnlimintSDK_Core.xcframework
