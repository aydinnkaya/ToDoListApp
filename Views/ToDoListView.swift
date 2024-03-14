//
//  ToDoListView.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
   
    @StateObject var viewModel:ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    
    
    init(userId: String) {
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }
    
    var body: some View {
        
        NavigationStack{
            VStack{
                List(items){ item in
                    ToDoListItemView(item: item)
                        .swipeActions{
                            Button("Delete") {
                                viewModel.delete(id: item.id)
                            }
                            .tint(.red)
                            
                        }
                        .padding(.top, 10)
                    
                    
                    
                }
                .listStyle(PlainListStyle())
                .padding(.top, 5)
                
                
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
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
            
        }
    }
}

#Preview {
    ToDoListView(userId: "rJ1k7BjBfKfwyhODvXwcoIC48yt2")
}
