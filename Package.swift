// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

let package = Package(
    name: "FLEX",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FLEX",
            targets: ["FLEX"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        .binaryTarget(
            name: "FLEX",
            url: "https://github.com/gnezdilovdenis/FLEX/releases/download/999999/FLEX.zip",
            checksum: "39f63a639c799426171c289198e66ff542702a0b69fd656f3fcdf0001a8b56bd055481998b2711809c1efdbdca3994f1a320bccfcd53b40f850122e5f03e2e28"
        )
    ]
)
