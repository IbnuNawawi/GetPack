//
//  CardList.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 24/05/24.
//

import SwiftUI

struct CardList: View {
    var imageWorkout: String
    var titleWorkout: String
    var timeWorkout: String
    
    var body: some View {
        HStack{
            Image(imageWorkout)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding(30)
                .background(.graySoft)
                .cornerRadius(10)
            
            VStack(alignment: .leading){
                Text(titleWorkout)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.medium)
                    .padding(.horizontal,20)
                    .padding(.vertical,10)
                    
                Text(timeWorkout)
                    .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                    .fontWeight(.medium)
                    .padding(.horizontal,20)
                    .foregroundColor(.gray)
            }
            
        }
        .padding(20)
//        .background(.blueSoft)
    }
}

#Preview {
    CardList(imageWorkout: "Jumping Jack", titleWorkout: "JUMPING JACK", timeWorkout: "00:20")
}
