//
//  HousingListView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 28/02/24.
//

import SwiftUI

struct HousingListView: View {
    var housingList: [Accomodation]

    var body: some View {
        NavigationView {
            ScrollView { // Aggiungi una ScrollView
                ZStack {                    
                    VStack {
                        ForEach(housingList) { accomodation in
                            AccomodationView(accomodation: accomodation)
                                .padding(.bottom, 8)
                        }
                        
                        Spacer()
                    }
                    .padding(.top, 10) // Spazio sopra il titolo di navigazione
                }
            }
            .navigationTitle("Accomodation")
        }
    }
}

struct HousingListView_Previews: PreviewProvider {
    static var previews: some View {
        let previewList: [Accomodation] = [
            Accomodation(place: "Gianturco", imageName: "gianturco", value: "675", distance: "6.5 km", bathroom: "1", bed: "3"),
            
            Accomodation(place: "San Ferdinando", imageName: "sanferdinando", value: "500", distance: "3 km", bathroom: "1", bed: "1")
        ]
        
        return HousingListView(housingList: previewList)
    }
}

