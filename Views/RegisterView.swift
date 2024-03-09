//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import SwiftUI

struct RegisterView: View {
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        NavigationStack{
            VStack{
                // Header
                HeaderView(title: "Register",
                           subtitle: "Start organizing todos",
                           angle: -15,
                           background: .orange)
                
                VStack(){
                    TextField("Full Name", text: $fullName)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal ,24)
                        .autocorrectionDisabled()
                    
                    TextField("Enter your email ", text: $email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal ,24)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Enter your password", text: $password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal ,24)
                }
                
                
                TLButton(title:"Create Account", background: .green){
                    
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    RegisterView()
}
