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
            url: "https://github.com/jeremyabannister/ErrorMessage-module",
            from: "0.1.0"
        ),
        .package(
            url: "https://github.com/jeremyabannister/String-utf8Data",
            from: "0.1.0"
        ),
    ],
    targets: [
        .target(
            name: "JSONToolkit",
            dependencies: [
                "Data-humanReadableDescription",
                "Data-utf8String",
                "ErrorMessage-module",
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
