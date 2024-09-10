# Example RealityKit rendering using an EXR file for environmental lighting

Based on example code from https://stackoverflow.com/questions/77332150/realitykit-how-to-disable-default-lighting-in-nonar-arview

After [posting about this to the Apple developer forums](https://developer.apple.com/forums/thread/762322), I rebuilt the project using Xcode 15.4, which is the project `skyboxExample.xcodeproj`.

When compiled with Xcode 15.4, it works correctly - the sphere showing a reflection of the prarie instead of the default lighting. 
![output-examples/expected_image.png]

However, with Xcode 16beta5, and 16 release candidate, it fails.
![output-examples/fallthrough_image.png]

Xcode correctly packages the prairie.skybox as an HDR lighting background in the built application, but the frameworks on macOS 16.6.1 (Sonoma) can't load the image. The resource file is embedded, but fails to load with the following error:

```text
Unable to load resource: Reality File version 11 is not supported. (Latest supported version is 9.)
```
