//
//  ContentView.swift
//  SwiftDataGlossary
//
//  Created by Ariel Tyson on 6/11/24.
//

import SwiftUI
import RealityKit
import RealityKitContent
import SwiftData

struct ContentView: View {
    
    @State var isAddNewWordViewShowing: Bool = false
    @Query var wordItems: [WordDataModel]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
            Text("Glossary App")
                .font(.extraLargeTitle)
            
            List {
                ForEach(wordItems) { wordItem in
                    ListRow(wordItem: wordItem)
                }
                .onDelete(perform: { indexSet in
                    for index in indexSet {
                        let itemToDelete = wordItems[index]
                        modelContext.delete(itemToDelete)
                    }
                })
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
        .padding(100)
    }
}

struct ListRow: View {
    
    @Bindable var wordItem: WordDataModel
    
    var body: some View {
        HStack {
            Text(wordItem.name)
                .font(.title)
            
            Spacer()
            
            Toggle(
                "",
                systemImage:
                    "checkmark",
                isOn:
                    $wordItem.status
            )
                .toggleStyle(.button)
        }
    }
}

#Preview(windowStyle: .automatic) {
    
    let configuration = ModelConfiguration(
        isStoredInMemoryOnly:
            true
    )
    
    let container = try! ModelContainer(
        for:
            WordDataModel.self,
        configurations:
            configuration
    )
    
    ContentView()
        .modelContainer(container)
}
