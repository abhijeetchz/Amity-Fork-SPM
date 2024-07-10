// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZumbaAmityKit",
    products: [
        .library(
            name: "ZumbaAmityKit",
            targets: [
                "ZumbaAmityKit"
            ]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AmitySDK",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/3.20.7/AmitySDK.xcframework.zip",
            checksum: "64fa391f50185357e99f2a7808e293638a34f4d729defc7eba669b66c0da8fcd"
        ),
        .target(
            name: "ZumbaAmityKit",
            dependencies: ["AmitySDK"]
        ),
        .testTarget(
            name: "ZumbaAmityKitTests",
            dependencies: ["ZumbaAmityKit"]
        ),
    ]
)
