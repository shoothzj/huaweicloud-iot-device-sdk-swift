// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HuaweiCloudIoTDevice",
    platforms: [
        .iOS(.v13),
        .macOS(.v13),
        .tvOS(.v13),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "HuaweiCloudIoTDevice",
            targets: ["HuaweiCloudIoTDevice"]),
    ],
    dependencies: [
        .package(url: "https://github.com/emqx/CocoaMQTT.git", from: "2.1.6"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "HuaweiCloudIoTDevice",
            dependencies: ["CocoaMQTT", ]),
        .testTarget(
            name: "HuaweiCloudIoTDeviceTests",
            dependencies: ["HuaweiCloudIoTDevice"]),
    ]
)
