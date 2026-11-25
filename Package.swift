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
    .package(url: "https://github.com/wisebirds/nestads-partner-ios-sdk-core", from: "1.3.0"),
    .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", "4.8.1"..<"4.13.0")
  ],
  targets: [
    .binaryTarget(
      name: "NestAdsPartnerMoloco",
      url: "https://github.com/wisebirds/nestads-partner-ios-sdk-moloco/releases/download/1.1.0/NestAdsPartnerMoloco.xcframework.zip",
      checksum: "76dc47d4d28c2d47a19f9576518b5af95d9bac037a4f8b186c4e4ee8f69242d2"
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
