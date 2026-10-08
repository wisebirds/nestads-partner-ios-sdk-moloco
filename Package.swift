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
    .package(url: "https://github.com/wisebirds/nestads-partner-ios-sdk-core", from: "1.0.0"),
    .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", from: "4.8.1")
  ],
  targets: [
    .binaryTarget(
      name: "NestAdsPartnerMoloco",
      url: "https://github.com/wisebirds/nestads-partner-ios-sdk-moloco/releases/download/1.0.0/NestAdsPartnerMoloco.xcframework.zip",
      checksum: "e77e906629693cd76c77c240a1421b0b59558520d5fceaf77a80b6beb1fafdef"
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
