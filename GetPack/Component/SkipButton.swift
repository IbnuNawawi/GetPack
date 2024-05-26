//
//  SkipButton.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 25/05/24.
//

import SwiftUI

struct SkipButton: View {
    var body: some View {
        Text("Skip")
            .fontWeight(.bold)
            .frame(width: 500, height: 30)
            .foregroundStyle(.blueSoft)
            .padding(10)
            .background(Color.graySoft)
            .cornerRadius(15)
    }
}

#Preview {
    SkipButton()
}
