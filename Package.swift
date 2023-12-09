// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SharedResourcesClientAndServer",
    platforms: [
        .macOS(.v11), .iOS(.v12)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SharedResourcesClientAndServer",
            targets: ["SharedResourcesClientAndServer"]),
    ], 
    dependencies: [
        .package(url: "https://github.com/appwrite/sdk-for-swift", .upToNextMajor(from: "4.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SharedResourcesClientAndServer",
            dependencies: [
                .product(name: "Appwrite", package: "sdk-for-swift")
            ]
        ),
        
        .testTarget(
            name: "SharedResourcesClientAndServerTests",
            dependencies: ["SharedResourcesClientAndServer"]),
    ]
)

