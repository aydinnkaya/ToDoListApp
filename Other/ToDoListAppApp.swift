//
//  ToDoListAppApp.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 8.03.2024.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()  
        }
    }
}
