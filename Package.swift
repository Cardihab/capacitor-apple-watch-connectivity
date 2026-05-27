// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CapacitorAppleWatchConnectivity",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "CapacitorAppleWatchConnectivity",
            targets: ["AppleWatchConnectivityPlugin"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "AppleWatchConnectivityPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
                // WatchConnectivity is a system framework — no SPM entry needed
            ],
            path: "ios/Plugin",
            exclude: [
                "Example.swift",
                "ExamplePlugin.h",
                "ExamplePlugin.m",
                "ExamplePlugin.swift"
            ]
        )
    ]
)
