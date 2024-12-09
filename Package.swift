// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ML_package",
    platforms: [
        .iOS(.v15), // 設置最低支援版本
    ],
    products: [
        .library(
            name: "ML_package",
            targets: ["ML_package"]
        ),
    ],
    dependencies: [
        // 添加依賴
        .package(url: "https://github.com/crelies/AdvancedList.git", from: "8.0.0"),
        .package(url: "https://github.com/spacenation/swiftui-sliders.git", from: "2.1.0"),
    ],
    targets: [
        .target(
            name: "ML_package",
            dependencies: [
                "AdvancedList",
                .product(name: "Sliders", package: "swiftui-sliders")
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "ML_packageTests",
            dependencies: ["ML_package"],
            path: "Tests"
        ),
    ]
)
