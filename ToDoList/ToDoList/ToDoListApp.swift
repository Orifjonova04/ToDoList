//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Gulchiroy Orifjonova on 09/05/23.
//

import SwiftUI

@main
struct ToDoListApp: App {
    
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
