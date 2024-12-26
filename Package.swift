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
        .package(url: "https://github.com/heart/CarBode-Barcode-Scanner-For-SwiftUI", from: "2.2.4"),        
//        .package(url: "https://github.com/heart/CarBode-Barcode-Scanner-For-SwiftUI", branch: "main"),
		.package(url: "https://github.com/danielgindi/Charts.git", from: "5.1.0"),        
    ],
    targets: [
        .target(
            name: "ML_package",
            // 同步新增依賴名稱，可從第三方的Package.swift取得
            dependencies: [
                "AdvancedList",
                .product(name: "Sliders", package: "swiftui-sliders"),
                .product(name: "CarBode", package: "CarBode-Barcode-Scanner-For-SwiftUI"),
                .product(name: "DGCharts", package: "Charts")
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
