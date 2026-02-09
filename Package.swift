// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "InstallChecker",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "InstallChecker",
            targets: ["InstallCheckerPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "8.0.0")
    ],
    targets: [
        .target(
            name: "InstallCheckerPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/InstallCheckerPlugin"),
        .testTarget(
            name: "InstallCheckerPluginTests",
            dependencies: ["InstallCheckerPlugin"],
            path: "ios/Tests/InstallCheckerPluginTests")
    ]
)