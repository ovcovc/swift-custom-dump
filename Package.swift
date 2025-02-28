// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "swift-custom-dump",
  platforms: [
    .iOS(.v13),
    .macOS(.v10_15),
    .tvOS(.v13),
    .watchOS(.v6),
  ],
  products: [
    .library(
      name: "CustomDump",
      targets: ["CustomDump"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/ovcovc/swift-issue-reporting", .branch("release/1_5_2"))
  ],
  targets: [
    .target(
      name: "CustomDump",
      dependencies: [
        .product(name: "XCTestDynamicOverlay", package: "swift-issue-reporting")
      ]
    ),
    .testTarget(
      name: "CustomDumpTests",
      dependencies: [
        "CustomDump"
      ]
    ),
  ]
)
