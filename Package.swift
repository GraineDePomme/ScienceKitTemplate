// swift-tools-version: 6.1

import PackageDescription

let package = Package(

    name: "TestScienceKit",

    dependencies: [
        .package(url: "https://github.com/apple/swift-numerics", from: "1.0.0"),
        .package(url: "https://github.com/GraineDePomme/ScienceKit", from: "1.0.0")
    ],

    targets: [
        .executableTarget(
            name: "ScienceKitTemplate",
            dependencies: [
                .product(name: "Numerics", package: "swift-numerics"),
                .product(name: "ScienceKit", package: "ScienceKit")
            ]
        )
    ]
)
