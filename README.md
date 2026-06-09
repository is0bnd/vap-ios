# QGVAPlayer

QGVAPlayer is the iOS VAP player extracted from Tencent VAP and packaged for Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 15+
- Swift Package Manager

## Installation

Add this repository as a Swift package dependency:

```swift
.package(url: "https://github.com/<owner>/vap-ios.git", branch: "main")
```

Then add the `QGVAPlayer` product to your app target.

## Usage

Swift:

```swift
import QGVAPlayer

view.playHWDMP4(filePath, delegate: delegate)
```

Objective-C:

```objc
#import <QGVAPlayer/QGVAPlayer.h>
```

## Notes

- The package keeps the original Objective-C implementation.
- `Shaders/QGHWDShaders.metal` is excluded from SPM compilation. The player uses the existing runtime shader-source fallback.
- OpenGLES APIs are deprecated on iOS 12+, so Xcode may emit deprecation warnings when building.

## License

QGVAPlayer is available under the MIT license. See [LICENSE.txt](LICENSE.txt).
