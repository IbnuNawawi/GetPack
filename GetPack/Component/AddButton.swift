//
//  AddButton.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 25/05/24.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        Text("+20")
            .fontWeight(.bold)
            .frame(width: 500, height: 30)
            .foregroundColor(.white)
            .padding(10)
            .background(.blueYoung)
            .cornerRadius(10)
    }
}

#Preview {
    AddButton()
}
