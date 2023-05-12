//
//  ItemModel.swift
//  ToDoList
//
//  Created by Gulchiroy Orifjonova on 09/05/23.
//

import Foundation

// immutable struct 
 
struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init (id: String = UUID().uuidString, title: String, isCompleted: Bool){
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel{
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
    
}

//ItemModel(id: String, title: <#T##String#>, isCompleted: <#T##Bool#>)

