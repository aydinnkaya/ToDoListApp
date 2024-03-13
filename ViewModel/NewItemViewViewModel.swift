//
//  NewItemViewViewModel.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import Foundation

class NewItemViewViewModel : ObservableObject {
 
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false 
    
    
    init(){
    
    }
    
    func Save(){
        
    }
    
   var canSave: Bool{
        
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        
        // -86400 -> Seconda exsist in a day
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            
            return false
        }
        
        return true
    }
}
