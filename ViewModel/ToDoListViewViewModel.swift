//
//  ToDoListViewViewModel.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//
import FirebaseFirestore
import Foundation


/// ViewModel for list of items view
/// Primary tab
///
class ToDoListViewViewModel : ObservableObject {
    
    @Published var showingNewItemView = false
    
    private let userId : String
    
    init(userId: String){
        self.userId = userId
    }
    
    
    /// Delete to do list item
    /// - Parameter id: Item id do delete
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
        
        
    }
}
