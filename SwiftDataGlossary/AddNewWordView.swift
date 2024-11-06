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
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Add New Word")
            
            TextField("", text: $text)
                .textFieldStyle(.roundedBorder)
            
            Button("", systemImage: "checkmark") {
                
            }
            .labelStyle(.iconOnly)
        }
        .padding(30)
    }
}

#Preview(windowStyle: .automatic) {
    AddNewWordView()
}
