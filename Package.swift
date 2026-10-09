// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "TUIChatKit",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "TUIChatKit", targets: ["TUIChatKit", "TUIChatKitObjC"])
    ],
    dependencies: [
        .package(url: "https://github.com/Tencent-RTC/AtomicXCore_SwiftPM.git", from: "4.3.0"),
        .package(url: "https://github.com/Tencent-RTC/Chat_SDK_SwiftPM.git", from: "9.0.7652"),
        .package(url: "https://github.com/Hanpto/AlbumPicker_SwiftPM.git", from: "1.0.8"),
        .package(url: "https://github.com/Hanpto/AlbumPickerCore_SwiftPM.git", from: "1.0.8"),
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.7.1"),
        .package(url: "https://github.com/onevcat/Kingfisher.git", from: "7.12.0"),
        .package(url: "https://github.com/Hanpto/Masonry_SwiftPM.git", from: "1.1.0")
    ],
    targets: [
        .target(
            name: "TUIChatKit",
            dependencies: [
                .product(name: "AtomicXCore", package: "AtomicXCore_SwiftPM"),
                .product(name: "Chat_SDK_SwiftPM", package: "Chat_SDK_SwiftPM"),
                .product(name: "AlbumPicker", package: "AlbumPicker_SwiftPM"),
                .product(name: "AlbumPickerCore", package: "AlbumPickerCore_SwiftPM"),
                .product(name: "SnapKit", package: "SnapKit"),
                .product(name: "Kingfisher", package: "Kingfisher"),
                .product(name: "Masonry", package: "Masonry_SwiftPM"),
                "TUIChatKitObjC"
            ],
            path: "Sources",
            exclude: ["TUIChatKit.podspec", "LICENSE", "resources", "TUIChatKitObjC"],
            resources: [.copy("Resources/strings"), .process("Resources/assets/chat/chat.xcassets"), .process("Resources/assets/chat/videorecorder.xcassets"), .copy("Resources/assets/chat/VideoRecorder.bundle")],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("AVKit"),
                .linkedFramework("SwiftUI"),
                .linkedFramework("SafariServices")
            ]
        ),
        .target(
            name: "TUIChatKitObjC",
            dependencies: [
            .product(name: "Masonry", package: "Masonry_SwiftPM")
            ],
            path: "Sources/TUIChatKitObjC",
            publicHeadersPath: "."
        )
    ],
    swiftLanguageModes: [.v5]
)
