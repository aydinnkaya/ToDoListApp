//
//  User.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import Foundation

struct User : Codable {
    let id: String
    let name : String
    let email: String
    let joined: TimeInterval
}
