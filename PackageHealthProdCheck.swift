// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "AsposeWordsCloudHealthProdCheck",
    products: [
        .library(
            name: "AsposeWordsCloudHealthProdCheck",
            targets: ["AsposeWordsCloudHealthProdCheck"]),
    ],
    dependencies: [
        .package(url: "https://github.com/allegro/swift-junit.git", from: "1.0.0"),
        .package(url: "https://github.com/aspose-words-cloud/Aspose.Words-Cloud-SDK-for-Swift.git", .branch("release"))
    ],
    targets: [
        .target(
            name: "AsposeWordsCloudHealthProdCheck",
            dependencies: []),
        .testTarget(
            name: "AsposeWordsCloudHealthProdCheckTests",
            dependencies: [
                "AsposeWordsCloudHealthProdCheck",
                .product(name: "SwiftTestReporter", package: "swift-junit"),
                .product(name: "AsposeWordsCloud", package: "aspose-words-cloud-swift"),
            ]
        ),
    ]
)
