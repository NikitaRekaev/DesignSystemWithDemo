// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DesignSystem",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DesignSystem",
            targets: ["DesignSystem"])
    ],
    dependencies: [
        .package(url: "https://github.com/lukepistrol/SwiftLintPlugin", from: "0.2.2"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1")
    ],
    targets: [
        .target(
            name: "DesignSystem",
            dependencies: ["SnapKit"],
            path: "Sources",
            resources: [
                .process("Resources/Fonts/Inter-Bold.ttf"),
                .process("Resources/Fonts/Inter-Medium.ttf"),
                .process("Resources/Fonts/Inter-Regular.ttf"),
                .process("Resources/Fonts/Inter-SemiBold.ttf")
            ],
            swiftSettings: [.define("SwiftLintPlugin")], plugins: [.plugin(name: "SwiftLint", package: "SwiftLintPlugin")]
        ),
        .testTarget(
            name: "DesignSystemTests",
            dependencies: ["DesignSystem"])
    ]
)
