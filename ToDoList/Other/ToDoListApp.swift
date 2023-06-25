//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Aaron Sim on 2023-06-15.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
