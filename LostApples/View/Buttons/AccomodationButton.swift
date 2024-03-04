//
//  AccomodationButton.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 16/02/24.
//

import SwiftUI

struct AccomodationButton: View {
    var body: some View {
        NavigationLink(destination: HousingListView(housingList: Accomodation.list)) {
                Text("Accomodation")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.brown)
                    .clipShape(RoundedRectangle(cornerRadius: 10)) // Imposta i bordi curvi
                    .font(.title)
            }
            .padding()
        
        }
}

#Preview {
    AccomodationButton()
}
