//
//  AccomodationButton.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 16/02/24.
//

import SwiftUI

struct AccomodationButton: View {
    @State private var isHousingListViewPresented = false
    
    
    var body: some View {
        Button(action: {
            isHousingListViewPresented = true
        }) {
            Text("Accomodation")
        }
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
        .buttonStyle(.bordered)
        .controlSize(.extraLarge)
        .frame(maxWidth: .infinity, alignment: .center)
        .font(.title)
        .fullScreenCover(isPresented: $isHousingListViewPresented) {
            HousingListView(housingList: Housing.list)
        }
    }
}

#Preview {
    AccomodationButton()
}
