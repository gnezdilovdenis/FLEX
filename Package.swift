import PackageDescription

let package = Package(
    name: "FLEX",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "FLEX",
                 targets: ["FLEX"])
    ],
    targets: [
        .target(name: "FLEX",
                path: "Classes"),
    ]
)