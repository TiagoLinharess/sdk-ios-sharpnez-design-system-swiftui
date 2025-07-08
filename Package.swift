// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sdk-ios-sharpnez-design-system-swiftui",
    platforms: [.iOS(.v26), .macOS(.v26), .visionOS(.v26)],
    products: [
        .library(
            name: "sdk-ios-sharpnez-design-system-swiftui",
            targets: ["sdk-ios-sharpnez-design-system-swiftui"]
        ),
    ],
    targets: [
        .target(
            name: "sdk-ios-sharpnez-design-system-swiftui"
        ),
        .testTarget(
            name: "sdk-ios-sharpnez-design-system-swiftuiTests",
            dependencies: ["sdk-ios-sharpnez-design-system-swiftui"]
        ),
    ]
)
