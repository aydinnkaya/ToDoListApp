//
//  LoginView.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    
    var body: some View {
        NavigationStack{
            VStack{
                // Header
                HeaderView(title: "To Do List",
                           subtitle: "Get things done",
                           angle: 15,
                           background: .pink)
                
              
                
                VStack(){
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)
                    }
                    
                    TextField("Enter your email ", text: $viewModel.email)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal ,24)
                        .textInputAutocapitalization(.none)
                    
                    SecureField("Enter your password", text: $viewModel.password)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .cornerRadius(10)
                        .padding(.horizontal ,24)
                }
                
                Button{
                    print("Forgot Password")
                }label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }.frame(maxWidth: .infinity ,alignment: .bottomTrailing)
                
                
                
                TLButton(
                    title: "Log In",
                    background: .blue){
                        viewModel.Login()
                    }
                
                
                /* Login Form
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
                 .padding()
                 .offset(y:50)
                 */
                // Create Account
                
                Divider()
                    .offset(y:40)
                VStack{
                    Text("New arround here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                    
                }
                .padding(.top,40)
            }
        }
    }
}


#Preview {
    LoginView()
}
