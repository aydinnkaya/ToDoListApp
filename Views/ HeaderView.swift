//
//  Header.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        VStack{
            
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundStyle(Color.pink)
                    .rotationEffect(Angle(degrees: 15))
                
                VStack{
                    Text("To Do List")
                        .font(.system(size: 50))
                        .foregroundStyle(.white)
                        .bold()
                    
                    Text("Get things done")
                        .font(.system(size: 30))
                        .foregroundStyle(.white)
                    
                }
                .padding(.top , 30)
                
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            .offset(y: -100)
            
            Spacer()
            
        }
    }
}

#Preview {
    HeaderView()
}
