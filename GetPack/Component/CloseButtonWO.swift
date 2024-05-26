//
//  CloseButtonWO.swift
//  GetPack
//
//  Created by Ibnu Nawawi on 25/05/24.
//

import SwiftUI

struct CloseButtonWO: View {
    var body: some View {
        
        Image(systemName: "x.circle")
            .resizable()
            .scaledToFit()
            .frame(width: 30)
            .foregroundColor(.blueYoung)
    }
}

#Preview {
    CloseButtonWO()
}
