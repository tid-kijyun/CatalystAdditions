// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "CatalystAdditions",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(name: "CatalystAdditions", targets: ["CatalystAdditions"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "CatalystAdditions",
            dependencies: []
        ),
        .testTarget(
            name: "CatalystAdditionsTests",
            dependencies: ["CatalystAdditions"]
        )
    ],
    swiftLanguageVersions: [.v5]
)

