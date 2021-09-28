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
            checksum: "7d2ff9d5c7bbf8af19077fdbf4f8346ef35db25f55962dfe92fe84812fcc19a9"
        )
    ]
)
