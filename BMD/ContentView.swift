//
//  ContentView.swift
//  BMD
//
//  Created by Jackson Pyle on 9/29/26.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace

    var body: some View {
        VStack {
            Text("Five Shapes")
                .font(.largeTitle)
            
            Button("Show Shapes"){
                Task {
                    await openImmersiveSpace(id: "ImmersiveSpace")
                }
            }
        }
        .padding()
    }
}
#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
