//
//  CloseButton.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 25/05/24.
//

import SwiftUI

struct CloseButtonRest: View {
    var body: some View {
        
        Image(systemName: "x.circle")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
            .foregroundColor(.white)
    }
   
}

#Preview {
    CloseButtonRest()
}
