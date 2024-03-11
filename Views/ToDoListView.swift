//
//  ToDoListView.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {

        NavigationStack{
            VStack{
                
            }
            .navigationTitle("To Do List")
            .toolbar{
                Button(action: {
                    viewModel.showingNewItemView = true
                }, label: {
                    Image(systemName: "plus")
                    
                })
            }
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView()
            }
            
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
