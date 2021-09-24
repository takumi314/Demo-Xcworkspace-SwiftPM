// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Packages",
    defaultLocalization: "en",
    platforms: [.iOS(.v12)],
    products: [
        .library(name: "AppFeature", targets: ["AppFeature"]),
        .library(name: "Packages", targets: ["Packages"]),
        .library(name: "HomeFeature", targets: ["Home", "Build"])
    ],
    dependencies: [
        .package(name: "Firebase", url: "https://github.com/firebase/firebase-ios-sdk.git", from: "8.7.0"),
        .package(name: "Alamofire", url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.0")),
    ],
    targets: [
        .target(
            name: "Home"
        ),
        .target(name: "Build"),
        .target(
            name: "FeatureA",
            dependencies: ["FeatureB"]),
        .target(
            name: "FeatureB",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "Firebase")
            ]),
        .target(
            name: "FeatureC",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire")
            ]),
        .target(
            name: "AppFeature",
            dependencies: ["FeatureA", "FeatureC"]),
        .testTarget(
            name: "AppFeatureTests",
            dependencies: ["AppFeature"]),
        .target(name: "Packages"),
        .testTarget(
            name: "PackagesTests",
            dependencies: ["Packages"])
    ]
)
