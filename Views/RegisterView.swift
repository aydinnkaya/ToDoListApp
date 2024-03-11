//
//  RegisterView.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import SwiftUI

struct RegisterView: View {
  
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        
        NavigationStack{
            VStack{
                // Header
                HeaderView(title: "Register",
                           subtitle: "Start organizing todos",
                           angle: -15,
                           background: .orange)
                
                VStack(){
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    TextField("Full Name", text: $viewModel.name)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal ,24)
                        .autocorrectionDisabled()
                    
                    TextField("Enter your email ", text: $viewModel.email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal ,24)
                        .textInputAutocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    SecureField("Enter your password", text: $viewModel.password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal ,24)
                }
                
                TLButton(title:"Create Account", background: .green){
                    viewModel.Register()
                }
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    RegisterView()
}
