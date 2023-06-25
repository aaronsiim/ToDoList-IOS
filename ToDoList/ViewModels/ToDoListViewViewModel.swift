//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Aaron Sim on 2023-06-15.
//

import FirebaseFirestore
import Foundation

/// ViewModel for list of items view
/// Primary tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
    
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document("user_id")
            .collection("todos")
            .document(id)
            .delete()
    }
}
