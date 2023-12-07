// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SharedResourcesClientAndServer",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SharedResourcesClientAndServer",
            targets: ["SharedResourcesClientAndServer"]),
    ], 
    dependencies: [
        .package(url: "git@github.com:appwrite/sdk-for-apple.git", from: "4.0.2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SharedResourcesClientAndServer",
            dependencies: [.product(name: "", package: "sdk-for-apple")]
        ),
        
        .testTarget(
            name: "SharedResourcesClientAndServerTests",
            dependencies: ["SharedResourcesClientAndServer"]),
    ]
)
