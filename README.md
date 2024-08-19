# Example RealityKit rendering using an EXR file for environmental lighting

Based on example code from https://stackoverflow.com/questions/77332150/realitykit-how-to-disable-default-lighting-in-nonar-arview


The initial Xcode project `skyboxSampleRealityKit.xcodeproj`, was built with Xcode 16 beta 5.
After [posting about this to the Apple developer forums](https://developer.apple.com/forums/thread/762322), I rebuilt the project using Xcode 15.4, which is the project `skyboxExample.xcodeproj`.

The Xcode 15.4 example works perfectly, the Xcode 16 beta 5 project fails to embed the resource in the app.

If you build and run skyboxExample.xcodeproj, even with Xcode 16 beta 5, it runs properly, and you see the prarie reflected.
The project that was initiated with Xcode16 beta5 (same files, etc) - doesn't work as expected.

