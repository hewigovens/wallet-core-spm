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
            checksum: "95ebb1581038280b3550e15fa669e7a595f7e6d22fb64773ef2ae4e0e18e7cfa"
        )
    ]
)
