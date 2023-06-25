//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Aaron Sim on 2023-06-15.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init(){}
    
    func login() {
        guard validate() else {
            return
        }
        
        // Try log in
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
   private func validate() -> Bool {
       errorMessage = ""
       guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
             !password.trimmingCharacters(in: .whitespaces).isEmpty else {
           errorMessage = "Please fill in all fields."
           return false
       }
       
       // email@foo.com
       guard email.contains("@") && email.contains(".") else {
           errorMessage = "Please enter valid email."
           return false
       }
       return true
    }
}
