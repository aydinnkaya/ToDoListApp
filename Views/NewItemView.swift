//
//  NewItemView.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import SwiftUI

struct NewItemView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented : Bool
    
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
                        if viewModel.canSave{
                            viewModel.Save()
                            newItemPresented = false
                        }else{
                            viewModel.showAlert = true
                        }
                        
                   
                    }
                .padding()
            }
            .alert(isPresented:$viewModel.showAlert , content: {
                Alert(title: Text("Erorr"),
                message:Text("Please fill in all fields and select due date that is today or newer."))
            })
        }
        
    }
}

#Preview {
    NewItemView(newItemPresented:Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
