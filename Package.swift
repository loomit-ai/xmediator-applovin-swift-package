// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorAppLovin",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorAppLovin", targets: ["XMediatorAppLovinTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.7.0"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.164.0")),
    ],
    targets: [
        .target(
            name: "XMediatorAppLovinTarget",
            dependencies: [
                .target(name: "XMediatorAppLovin"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
            ],
            path: "XMediatorAppLovinTarget",
            linkerSettings: [
                .linkedFramework("AdSupport"),
            ]
        ),
        .binaryTarget(
            name: "XMediatorAppLovin",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorAppLovin/XMediatorAppLovin-13.7.0.0.zip",
            checksum: "d331bad4305e2b16641a017beb49065a5b4ed2250d0f2688313d39f47dd8298e"
        ),
    ]
)
