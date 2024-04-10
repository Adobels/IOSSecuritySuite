// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "IOSSecuritySuite",
  platforms: [
    .iOS(.v11)
  ],
  products: [
    .library(name: "IOSSecuritySuite", type: .dynamic, targets: ["IOSSecuritySuite"])
  ],
  targets: [
    .target(
      name: "IOSSecuritySuite",
      path: "./IOSSecuritySuite",
      exclude: ["IOSSecuritySuite.h", "Info.plist"],
      resources: [.copy("PrivacyInfo.xcprivacy")]
    )
  ],
  swiftLanguageVersions: [.v4_2, .v5]
)
