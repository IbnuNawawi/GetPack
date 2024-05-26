//
//  CardOtot.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 24/05/24.
//
import SwiftUI

struct CardOtot: View {
    var muscleName: String
    
    var body: some View {
        
        HStack {
            Circle()
                .frame(width: 20)
                .foregroundStyle(.blueSoft)
            Text(muscleName)
        }
        .frame(height: 10)
        .padding(15)
        .background(Color.graySoft)
        .cornerRadius(15)
        
           
    }
}

#Preview {
    CardOtot(muscleName: "Shoulders")
}
