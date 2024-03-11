//
//  MainViewViewModel.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//
import FirebaseFirestore
import FirebaseAuth
import Foundation


class MainViewViewModel: ObservableObject {
    
    @Published var curentUserId: String = ""
    private var handler : AuthStateDidChangeListenerHandle?
    
    init(){
        
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.curentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool{
        return Auth.auth().currentUser != nil
    }
    
    
}
