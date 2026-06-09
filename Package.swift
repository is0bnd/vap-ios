// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "QGVAPlayer",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "QGVAPlayer",
            targets: ["QGVAPlayer"]
        )
    ],
    targets: [
        .target(
            name: "QGVAPlayer",
            path: "Sources/QGVAPlayer",
            exclude: [
                "Info.plist",
                "Shaders/QGHWDShaders.metal"
            ],
            publicHeadersPath: "include/QGVAPlayer",
            cSettings: [
                .headerSearchPath("include/QGVAPlayer"),
                .headerSearchPath("Classes"),
                .headerSearchPath("Classes/Controllers"),
                .headerSearchPath("Classes/Controllers/Decoders"),
                .headerSearchPath("Classes/MP4Parser"),
                .headerSearchPath("Classes/Models"),
                .headerSearchPath("Classes/Utils"),
                .headerSearchPath("Classes/Utils/Categorys"),
                .headerSearchPath("Classes/Utils/Logger"),
                .headerSearchPath("Classes/Views/Metal"),
                .headerSearchPath("Classes/Views/Metal/Vapx"),
                .headerSearchPath("Shaders")
            ],
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreVideo"),
                .linkedFramework("Metal"),
                .linkedFramework("MetalKit"),
                .linkedFramework("QuartzCore"),
                .linkedFramework("UIKit")
            ]
        )
    ]
)
