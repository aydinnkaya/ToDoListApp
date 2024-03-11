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
    init(){
    
    }
    
    func Save(){
        
    }
}
