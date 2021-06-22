// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "WalletCore",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "WalletCore", targets: ["WalletCore", "SwiftProtobuf"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "WalletCore",
            url: "https://github.com/hewigovens/wallet-core-spm/releases/download/0.0.1/WalletCore.xcframework.zip",
            checksum: "c524cfcd8a6a811f40fb7f5dadfd671944da0c70d78befbec43f4b81a7b7cd47"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/hewigovens/wallet-core-spm/releases/download/0.0.1/SwiftProtobuf.xcframework.zip",
            checksum: "270a6545f72a512aafc7d7ecb73621005248d4ea44f7ebbc06a2f33c7d15bc4c"
        )
    ]
)
