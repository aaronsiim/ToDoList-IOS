//
//  User.swift
//  ToDoList
//
//  Created by Aaron Sim on 2023-06-15.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
