//
//  PreviousButton.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 25/05/24.
//

import SwiftUI

struct PreviousButton: View {
    var body: some View {
        Text("Previous")
            .fontWeight(.bold)
            .frame(width: 235, height: 30)
            .foregroundStyle(.blueSoft)
            .padding(10)
            .background(Color.graySoft)
            .cornerRadius(15)
    }
}

#Preview {
    PreviousButton()
}
