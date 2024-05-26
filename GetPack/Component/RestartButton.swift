//
//  RestartButton.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 25/05/24.
//

import SwiftUI

struct RestartButton: View {
    var body: some View {
        Text("Restart this Exercise")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .frame(width: 500, height: 30)
            .foregroundStyle(.blueSoft)
            .padding(10)
            .background(Color.graySoft)
            .cornerRadius(15)
    }
}

#Preview {
    RestartButton()
}
