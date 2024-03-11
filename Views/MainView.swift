//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 8.03.2024.
//

import SwiftUI

struct MainView: View {
    
    @State var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.curentUserId.isEmpty{
            // Signed in
            ToDoListView()
        }else{
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
