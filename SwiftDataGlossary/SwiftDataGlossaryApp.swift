//
//  SwiftDataGlossaryApp.swift
//  SwiftDataGlossary
//
//  Created by Ariel Tyson on 6/11/24.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataGlossaryApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [WordDataModel.self])
        }
    }
}
