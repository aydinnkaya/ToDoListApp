//
//  NewItemView.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    init() {}
    
    var body: some View {
        
        VStack{
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top , 100)
            
            Form{
                //Title
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // Button
                TLButton(
                    title: "Save",
                    background:.pink) {
                        viewModel.Save()
                    }
                    .padding()
            }
        }
        
    }
}

#Preview {
    NewItemView()
}
