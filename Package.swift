// swift-tools-version:5.8

/**
*  Splash-plugin for Publish
*  Copyright (c) John Sundell 2019
*  MIT license, see LICENSE file for details
*/

import PackageDescription

let package = Package(
    name: "SplashPublishPlugin",
    platforms: [.macOS(.v13)],
    products: [
        .library(
            name: "SplashPublishPlugin",
            targets: ["SplashPublishPlugin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/mwermeester/Publish.git", branch: "patch"),
        .package(url: "https://github.com/johnsundell/Splash.git", from: "0.16.0")
    ],
    targets: [
        .target(
                name: "SplashPublishPlugin",
                dependencies: [.product(name: "Publish", package: "Publish"), "Splash"]
            ),
        .testTarget(
            name: "SplashPublishPluginTests",
            dependencies: ["SplashPublishPlugin"]
        ),
    ]
)
