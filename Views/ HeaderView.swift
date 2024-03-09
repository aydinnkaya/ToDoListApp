//
//  Header.swift
//  ToDoListApp
//
//  Created by Aydın KAYA on 9.03.2024.
//

import SwiftUI

struct HeaderView: View {
    
    let title : String
    let subtitle : String
    let angle : Double
    let background : Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(background)
                .rotationEffect(Angle(degrees: angle))
            
    
            Image("ToDoListIcon")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 250)
                .offset(y:300)
            
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundStyle(.white)
                    .bold()
                
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundStyle(.white)
                
            }
            .padding(.top ,80)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
        Spacer(minLength: 10)
        
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
}
