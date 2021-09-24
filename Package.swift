import PackageDescription

let package = Package(
    name: "FLEX",
    platforms: [
        .macOS(.v10_10),
        .iOS(.v9),
        .tvOS(.v9),
        .watchOS(.v2)
    ],
    products: [
        .library(name: "FLEX",
                 targets: ["FLEX"]),
        .library(name: "FLEX-Dynamic",
                 type: .dynamic,
                 targets: ["FLEX"]),
    ],
    targets: [
        .target(name: "FLEX",
                path: "Classes"),
    ]
)