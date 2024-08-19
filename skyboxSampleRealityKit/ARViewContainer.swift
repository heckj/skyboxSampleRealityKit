//
//  ARViewContainer.swift
//  skyboxSampleRealityKit
//
//  Created by Joseph Heck on 8/19/24.
//

import SwiftUI
import RealityKit

struct ARViewContainer : NSViewRepresentable {
    var arView: ARView
    
    func makeNSView(context: Context) -> ARView {
        
        var sphereMaterial = SimpleMaterial()
        sphereMaterial.roughness = .float(0.0)
        sphereMaterial.metallic = .float(0.3)

        let sphereEntity = ModelEntity(mesh: .generateSphere(radius: 0.5),
                                  materials: [sphereMaterial])

        let sphereAnchor = AnchorEntity(world: .zero)
        sphereAnchor.addChild(sphereEntity)
        arView.scene.anchors.append(sphereAnchor)
        
        let pointLight = PointLight()
        pointLight.light.intensity = 50_000
        pointLight.light.color = .red
        pointLight.position.z = 2.0
        sphereAnchor.addChild(pointLight)

        return arView
    }

    func updateNSView(_ view: ARView, context: Context) { }
}
