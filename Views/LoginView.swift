//
//  LoginView.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        // Header
        HeaderView()
        
        // Login Form 
        
        Form{
            
            TextField("Email Address", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            
            Button(action: {
                
            }, label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.blue)
                
                   Text("Log In ")
                        .foregroundStyle(.white)
                        .bold()
                }
            })

            
        }
    }
}

#Preview {
    LoginView()
}
