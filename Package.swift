// swift-tools-version:5.9
import PackageDescription
let package = Package(
  name: "NestAdsPartnerMoloco",
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(
      name: "NestAdsPartnerMoloco",
      targets: ["NestAdsPartnerMolocoWrapper"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/wisebirds/nestads-partner-ios-sdk-core", from: "0.0.1"),
    .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", from: "4.8.1")
  ],
  targets: [
    .binaryTarget(
      name: "NestAdsPartnerMoloco",
      url: "https://github.com/wisebirds/nestads-partner-ios-sdk-moloco/releases/download/0.0.1/NestAdsPartnerMoloco.xcframework.zip",
      checksum: "d95b610bbae3837d180d8a78a0510271b9e0c89178994d85a64ea8fd7911f0e5"
    ),
    .target(
      name: "NestAdsPartnerMolocoWrapper",
      dependencies: [
        "NestAdsPartnerMoloco",
        .product(name: "NestAdsPartnerCore", package: "nestads-partner-ios-sdk-core"),
        .product(name: "MolocoSDK", package: "moloco-sdk-ios-spm")
      ],
      path: "Sources/Wrapper"
    )
  ]
)
