//  File.swift
//  Nikita Rekaev 31.05.2023

import ProjectDescription

let target = Target(
    name: "UIComponent",
    platform: .iOS,
    product: .framework,
    bundleId: "com.UIComponent",
    deploymentTarget: .iOS(targetVersion: "13.0", devices: .iphone),
    infoPlist: InfoPlist.dictionary([
        "CFBundleName": "$(APP_NAME)",
        "CFBundleVersion": "1",
        "CFBundleShortVersionString": "0.0.1",
        "CFBundleIdentifier": "$(PRODUCT_BUNDLE_IDENTIFIER)",
        "CFBundleExecutable": "$(EXECUTABLE_NAME)",
        "CFBundlePackageType": "$(PRODUCT_BUNDLE_PACKAGE_TYPE)",
        
    ]),
    sources: ["Sources/**"],
    resources: ["Sources/Resources/**"],
    dependencies: [
        .package(product: "SnapKit")
    ]
)

let project = Project(
    name: "UIComponent",
    packages: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.0.1")
    ],
    targets: [target]
)
