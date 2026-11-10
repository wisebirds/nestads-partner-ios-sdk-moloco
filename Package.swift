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
    .package(url: "https://github.com/wisebirds/nestads-partner-ios-sdk-core", from: "1.2.0"),
    .package(url: "https://github.com/moloco/moloco-sdk-ios-spm.git", from: "4.8.1")
  ],
  targets: [
    .binaryTarget(
      name: "NestAdsPartnerMoloco",
      url: "https://github.com/wisebirds/nestads-partner-ios-sdk-moloco/releases/download/1.0.1/NestAdsPartnerMoloco.xcframework.zip",
      checksum: "fa6877b604985aed7b628eca77e5f8613ca453dd457e1810ad3fb63c4a2f3fbd"
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
