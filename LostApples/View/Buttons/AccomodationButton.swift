//
//  AccomodationButton.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 16/02/24.
//

import SwiftUI

struct AccomodationButton: View {
    @State private var isHousingViewPresented = false
    
    
    var body: some View {
        Button(action: {
            isHousingViewPresented = true
        }) {
            Text("Accomodation")
        }
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
        .buttonStyle(.bordered)
        .controlSize(.extraLarge)
        .frame(maxWidth: .infinity, alignment: .center)
        .font(.title)
        .fullScreenCover(isPresented: $isHousingViewPresented) {
            HousingView()
        }
    }
}

#Preview {
    AccomodationButton()
}
