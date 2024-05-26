//
//  TextResume.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 26/05/24.
//

import SwiftUI

struct TextResume: View {
    var body: some View {
        Text("Keep it Up!")
            .font(.system(size: 60))
            .fontWeight(.bold)
            .foregroundColor(.orange)
            .overlay(
                Text("Keep it Up!")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(.blueSoft)
                    .offset(x: 2, y: 2)
            )
            .overlay(
                Text("Keep it Up!")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(.orangeSoft)
                    .offset(x: -2, y: -2)
            )
        
        Text("You Can Do it!")
            .font(.system(size: 60))
            .fontWeight(.bold)
            .foregroundColor(.orangeBold)
            .overlay(
                Text("You Can Do it!")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(.blueSoft)
                    .offset(x: 2, y: 2)
            )
            .overlay(
                Text("You Can Do it!")
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundColor(.orangeSoft)
                    .offset(x: -2, y: -2)
            )
    }
}

#Preview {
    TextResume()
}
