//
//  BaseComponent.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 24/05/24.
//

import SwiftUI

struct ResumeButton: View {
    var body: some View {
        Text("Resume")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .frame(width: 500, height: 30)
            .foregroundStyle(.white)
            .padding(10)
            .background(.blueSoft)
            .cornerRadius(10)
    }
}

#Preview {
   ResumeButton()
}
