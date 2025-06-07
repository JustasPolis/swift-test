// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "swift-package-test",
  platforms: [
        .iOS(.v18)
    ], 
  products: [
    .library(name: "FeatureOne", targets: ["FeatureOne"]),
    .library(name: "FeatureTwo", targets: ["FeatureTwo"]),
    .library(name: "FeatureThree", targets: ["FeatureThree"])
  ],
  targets: [
    .target(name: "FeatureOne", dependencies: ["FeatureOneInterface"]),
    .target(name: "FeatureOneInterface", dependencies: []),
    .target(name: "FeatureTwo", dependencies: ["FeatureOneInterface"]),
    .target(name: "FeatureThree", dependencies: ["FeatureOneInterface"]),
    .executableTarget(name: "FeatureMain", dependencies: ["FeatureThree", "FeatureOne"])
  ]
)
