//
//  HousingListView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 28/02/24.
//

import SwiftUI

struct HousingListView: View {
    
    var housingList: [Housing]
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(CustomColor.backgroundColorDark)
                    .ignoresSafeArea()
                VStack {
                    ForEach(housingList) { housing in
                        NavigationLink(destination: HousingDetailView(house: housing), label: {
                            SingleHousingView(housing: housing)
                        })
                        .padding(.bottom, 8)
                        
                    }
                    Spacer()
                }
                
            }
            .navigationTitle("Housing")
        }
    }
}

struct HousingListView_Previews: PreviewProvider {
    static var previews: some View {
        HousingListView(housingList: Housing.list)
    }
}
