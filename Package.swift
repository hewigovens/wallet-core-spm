// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "WalletCore",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_14),
    ],
    products: [
        .library(
            name: "WalletCore", type: .dynamic, targets: ["WalletCore", "SwiftProtobuf", "WalletCoreCommon"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "WalletCore",
            dependencies: ["SwiftProtobuf", "WalletCoreCommon"],
            path: "Sources",
            exclude: [
                "SecRandom.m"
            ],
            cSettings: [
                .headerSearchPath("include")
            ],
            cxxSettings: [
                .headerSearchPath("include")
            ],
            linkerSettings: [
                .linkedFramework("SwiftProtobuf"),
                .linkedFramework("WalletCoreCommon")
            ]
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/hewigovens/wallet-core-spm/releases/download/0.0.1/SwiftProtobuf.xcframework.zip",
            checksum: "270a6545f72a512aafc7d7ecb73621005248d4ea44f7ebbc06a2f33c7d15bc4c"
        ),
        .binaryTarget(
            name: "WalletCoreCommon",
            url: "https://github.com/hewigovens/wallet-core-spm/releases/download/0.0.1/WalletCoreCommon.xcframework.zip",
            checksum: "7e84ca6c02b9a54f5ff40ddf97f30497b4951a7036d599f16e2892f84945a72e"
        ),
    ]
)
