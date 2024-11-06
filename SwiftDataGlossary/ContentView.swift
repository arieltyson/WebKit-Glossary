//
//  ContentView.swift
//  SwiftDataGlossary
//
//  Created by Ariel Tyson on 6/11/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @State var isAddNewWordViewShowing: Bool = false
    
    var body: some View {
        VStack {
            Text("Glossary App")
                .font(.largeTitle)
            
            List {
                Text("SwiftUI")
                Text("RealityKit")
            }
            
            Button("Add") {
                isAddNewWordViewShowing = true
            }
        }
        .sheet(isPresented: $isAddNewWordViewShowing, content: {
            EmptyView()
        })
        .padding(20)
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
