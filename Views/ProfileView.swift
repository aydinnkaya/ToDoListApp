//
//  ProfileView.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    init() {
        
        
    }
    var body: some View {
        NavigationStack{
            VStack{
                if let user = viewModel.user{
                    profile(user: user)
                }
                else {
                    Text("Loading Profile...")
                }
                
            }
            .navigationTitle("Profile")
            
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View{
        // Avatar
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(.orange)
            .frame(width: 125, height: 125)
            .padding()
        
        // Info: Name, Email, Member since
        VStack(alignment: .leading){
            HStack{
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            .padding()
            HStack{
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            .padding()
            HStack{
                Text("Member Since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }
            .padding()
        }
        
        Spacer()
        // Sign out
        
        TLButton(
            title: "Log Out",
            background: .red) {
                viewModel.LogOut()
            }
        
    }
}

#Preview {
    ProfileView()
}
