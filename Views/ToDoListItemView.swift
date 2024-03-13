//
//  ToDoListItemView.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    let item : ToDoListItem
    
    var body: some View {
        HStack{
            VStack(alignment:.leading)
            {
                Text(item.title)
                    .font(.body)
                    
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundStyle(Color(.secondaryLabel))
            }
            Spacer()
            
            Button(action: {
                
                
            }, label: {
                    Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            })
        }
    }
}

#Preview {
    ToDoListItemView( item: .init(
        id: "123",
        title: "Get Milk",
        dueDate: Date().timeIntervalSince1970,
        createDate: Date().timeIntervalSince1970,
        isDone: true))
}
