// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "JSONToolkit",
    products: [
        .library(
            name: "JSONToolkit",
            targets: ["JSONToolkit"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/jeremyabannister/Data-humanReadableDescription",
            .upToNextMinor(from: "0.1.2")
        ),
        .package(
            url: "https://github.com/jeremyabannister/Data-utf8String",
            .upToNextMinor(from: "0.1.2")
        ),
        .package(
            url: "https://github.com/jeremyabannister/ErrorMessage-package",
            .upToNextMinor(from: "0.1.2")
        ),
        .package(
            url: "https://github.com/jeremyabannister/String-utf8Data",
            .upToNextMinor(from: "0.1.2")
        ),
    ],
    targets: [
        .target(
            name: "JSONToolkit",
            dependencies: [
                "Data-humanReadableDescription",
                "Data-utf8String",
                .product(name: "ErrorMessage-module", package: "ErrorMessage-package"),
                "String-utf8Data",
            ]
        ),
        .testTarget(
            name: "JSONToolkit-tests",
            dependencies: [
                "JSONToolkit",
            ]
        ),
    ]
)
