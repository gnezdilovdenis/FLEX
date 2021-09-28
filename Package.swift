// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FLEX",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library( name: "FLEX", targets: ["FLEX"])
    ],
    targets: [
        .binaryTarget(
            name: "FLEX",
            url: "https://github.com/gnezdilovdenis/FLEX/releases/download/999999/FLEX.zip",
            checksum: "7d2ff9d5c7bbf8af19077fdbf4f8346ef35db25f55962dfe92fe84812fcc19a9"
        )
    ]
)
