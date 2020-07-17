// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TrustWalletCore",
    products: [
        .library(name: "TrustWalletCore", targets: ["TrustWalletCore"])
    ],
    dependencies: [
        .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
    ],
    targets: [
        .binaryTarget(
            name: "TrustWalletCore",
            url: "https://walletcore.imfast.io/TrustWalletCore.xcframework.zip",
            checksum: "2345dc57a7c29c29e2d75d194174a006364fcb19ddcc5041c6d872c5de009b97"
        )
    ]
)
