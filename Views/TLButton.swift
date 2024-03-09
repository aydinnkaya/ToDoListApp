//
//  TLButton.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import SwiftUI

struct TLButton: View {
    
    let title : String
    let background : Color
    let action : () -> Void
    
    var body: some View {
        
        Button(action: {
            action()
        }, label: {
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 360, height: 44)
                .background(background)
                .clipShape(.rect(cornerRadius: 20))
        })
        .padding(.vertical)
        
    }
}

#Preview {
    TLButton(title: "title", background: .orange) {
        //Action
    }
}
