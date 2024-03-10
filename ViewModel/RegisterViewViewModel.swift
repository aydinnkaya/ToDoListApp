//
//  RegisterViewViewModel.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//
import FirebaseAuth
import Foundation

class RegisterViewViewModel : ObservableObject{
    
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {
        
    }
    
    func Register(){
        guard validate() else {
            
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            guard let userId = result?.user.uid else {
                return 
            }
        }
        
    }
    
    private func validate() -> Bool{
        errorMessage = ""
        guard
            !name.trimmingCharacters(in: .whitespaces).isEmpty,
            !email.trimmingCharacters(in: .whitespaces).isEmpty,
            !password.trimmingCharacters(in: .whitespaces).isEmpty
                
        else {
            errorMessage = "Please fill in all fields."
            return false
        }
        
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email."
            return false
        }
        
        guard password.count >= 6 else {
            errorMessage = "Password is probably not secure"
            return false
            
        }
        
        return true
    }
    
    
    
    
}
