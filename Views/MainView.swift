//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 8.03.2024.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.curentUserId.isEmpty{
            // Signed in
            accountView
            
        }else{
            LoginView()
        }
    }
    
    @ViewBuilder
    var accountView : some View {
        TabView{
            ToDoListView(userId: viewModel.curentUserId)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}



#Preview {
    MainView()
}
