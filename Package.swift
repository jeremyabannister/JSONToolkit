// swift-tools-version: 5.7

///
import PackageDescription

///
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
            from: "0.1.0"
        ),
        .package(
            url: "https://github.com/jeremyabannister/Data-utf8String",
            from: "0.1.0"
        ),
        .package(
            url: "https://github.com/jeremyabannister/ErrorMessage",
            from: "0.1.2"
        ),
    ],
    targets: [
        .target(
            name: "JSONToolkit",
            dependencies: [
                "Data-humanReadableDescription",
                "Data-utf8String",
                "ErrorMessage"
            ]
        ),
        .testTarget(
            name: "JSONToolkit-tests",
            dependencies: ["JSONToolkit"]
        ),
    ]
)
