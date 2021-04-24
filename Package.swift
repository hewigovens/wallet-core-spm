// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "WalletCore",
    products: [
        .library(name: "WalletCore", targets: ["WalletCore"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "WalletCore",
            url: "https://github.com/hewigovens/wallet-core-spm/releases/download/0.0.1/core+protobuf.zip",
            checksum: "5bd3959f58ef80515ba05922b00608293533a689a597fff1b43563f880c58d0a"
        )
    ]
)
