//
//  ContentView.swift
//  skyboxSampleRealityKit
//
//  Created by Joseph Heck on 8/19/24.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    @State var arView: ARView = {
let ar = ARView(frame: .zero)
do {
    let resource = try EnvironmentResource.load(named: "prairie")
    ar.environment.lighting.resource = resource
} catch {
    print("Unable to load resource: \(error)")
}
        return ar
    }()
    
    var body: some View {
        ARViewContainer(arView: arView)
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
