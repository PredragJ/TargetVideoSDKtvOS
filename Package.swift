// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

import PackageDescription

let package = Package(
    name: "TargetVideoSDKtvOS",
    platforms: [
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "TargetVideoSDKtvOS",
            targets: ["TargetVideoSDKtvOS"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-tvos", .upToNextMajor(from: "4.8.2"))
    ],
    targets: [
        .binaryTarget(
            name: "TargetVideoSDKtvOS",
            path: "./Sources/TargetVideoSDKtvOS.xcframework"
        ),
        .target(
            name: "TargetVideoSDKtvOSWrapper",
            dependencies: [
                "TargetVideoSDKtvOS",
                .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-tvos")
            ],
            path: "./Sources/TargetVideoSDKtvOSWrapper"
        )
    ]
)
