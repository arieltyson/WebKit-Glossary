//
//  AddNewWordView.swift
//  SwiftDataGlossary
//
//  Created by Ariel Tyson on 6/11/24.
//

import SwiftUI

struct AddNewWordView: View {
    
    @State var text: String = ""
    @Environment(\.dismiss) var dismissCurrentView
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Add New Word")
                .font(.largeTitle)
            
            TextField("", text: $text)
                .textFieldStyle(.roundedBorder)
            
            Button("", systemImage: "checkmark") {
                
                let wordItem = WordDataModel(
                    name:
                        text,
                    status:
                        false
                )
                modelContext.insert(wordItem)
                
                
                dismissCurrentView()
            }
            .labelStyle(.iconOnly)
        }
        .padding(100)
    }
}

#Preview(windowStyle: .automatic) {
    AddNewWordView()
}
