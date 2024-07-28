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
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/Data-humanReadableDescription",
            "0.1.1" ..< "0.2.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/Data-utf8String",
            "0.1.1" ..< "0.2.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/ErrorMessage-package",
            "0.1.0" ..< "0.2.0"
        ),
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/String-utf8Data",
            "0.1.1" ..< "0.2.0"
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
