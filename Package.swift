// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "FrameworkBridge",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
        .library(name: "FrameworkBridge", targets: ["FrameworkBridge"])
    ],
    dependencies: [],
    targets: [
        .target(name: "FrameworkBridge", dependencies: [])
    ]
)
