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
                Text("Word1")
                Text("Word2")
                Text("Word3")
                Text("Word4")
            }
            
            Button("Add") {
                isAddNewWordViewShowing = true
            }
        }
        .sheet(
            isPresented:
                $isAddNewWordViewShowing,
            content: {
                AddNewWordView()
            })
        .padding(20)
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
