//
//  WordDataModel.swift
//  SwiftDataGlossary
//
//  Created by Ariel Tyson on 6/11/24.
//

import Foundation
import SwiftData

@Model
class WordDataModel {
    var name: String
    var status: Bool
    
    init(name: String, status: Bool) {
        self.name = name
        self.status = status
    }
}
