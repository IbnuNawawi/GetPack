//
//  FinishButton.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 25/05/24.
//

import SwiftUI

struct FinishButton: View {
    var body: some View {
        Text("Done")
            .fontWeight(.bold)
            .frame(width: 500, height: 30)
            .foregroundStyle(.white)
            .padding(10)
            .background(.blueSoft)
            .cornerRadius(10)
    }
}

#Preview {
    FinishButton()
}
