//
//  ImmersiveView.swift
//  BMD
//
//  Created by Jackson Pyle on 9/29/26.
//

import SwiftUI
import RealityKit

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            let box1 = ModelEntity(
                mesh: .generateBox(size: 0.2),
                materials: [SimpleMaterial(color: .green, isMetallic: false)])
            box1.position = [-0.6, 1.2, -1]
            content.add(box1)
            Task{
                try? await Task.sleep(for: .seconds(0.5))
                box1.move(
                    to:Transform(translation: [-0.6, 1.60, -1]),
                    relativeTo: nil,duration: 0.5
                )
            }
            let sphere1 = ModelEntity(
                mesh: .generateSphere(radius: 0.1),
                materials: [SimpleMaterial(color: .blue, isMetallic: false)])
            sphere1.position = [-0.3, 1.2, -1]
            content.add(sphere1)
            Task{
                try? await Task.sleep(for: .seconds(0.5))
                sphere1.move(
                    to:Transform(translation: [-0.3, 1.60, -1]),
                    relativeTo: nil,duration: 0.5
                )
            }
            let sphere2 = ModelEntity(
                mesh: .generateSphere(radius: 0.1),
                materials: [SimpleMaterial(color: .yellow, isMetallic: false)])
            sphere2.position = [0, 1.2, -1]
            content.add(sphere2)
            Task{
                try? await Task.sleep(for: .seconds(0.5))
                sphere2.move(
                    to:Transform(translation: [0, 1.60, -1]),
                    relativeTo: nil,duration: 0.5
                )
            }
            let box2 = ModelEntity(
                mesh: .generateSphere(radius: 0.1),
                materials: [SimpleMaterial(color: .red, isMetallic: false)])
            box2.position = [0.3, 1.2, -1]
            content.add(box2)
            Task{
                try? await Task.sleep(for: .seconds(0.5))
                box2.move(
                    to:Transform(translation: [0.3, 1.6, -1]),
                    relativeTo: nil,duration: 0.5
                )
            }
            let sphere3 = ModelEntity(
                mesh: .generateBox(size: 0.2),
                materials: [SimpleMaterial(color: .green, isMetallic: false)])
            sphere3.position = [0.6, 1.2, -1]
            content.add(sphere3)
            Task{
                try? await Task.sleep(for: .seconds(0.5))
                sphere3.move(
                    to:Transform(translation: [0.6, 1.6, -1]),
                    relativeTo: nil,duration: 0.5
                )
            }
        }
    }
}

#Preview(immersionStyle: .full) {
    ImmersiveView()
        .environment(AppModel())
}
