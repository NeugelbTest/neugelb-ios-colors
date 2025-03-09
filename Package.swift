// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "NeugelbColors",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "NeugelbColors",
            targets: ["NeugelbColors"])
    ],
    targets: [
        .target(
            name: "NeugelbColors",
            path: "./Sources",
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "NeugelbColorsTests",
            dependencies: ["NeugelbColors"]
        )
    ]
)
