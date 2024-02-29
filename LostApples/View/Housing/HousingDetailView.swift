//
//  HousingDetailView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 28/02/24.
//

import SwiftUI

struct HousingDetailView: View {
    @State var house: Housing

    var body: some View {
        VStack {
            Text(house.name)
                .font(.title)
                .padding()
            
            Text(house.description)
                .font(.body)
                .foregroundColor(.gray)
            // Altre viste per visualizzare altre proprietà del documento, se necessario
            
            
        }
        .padding()
        .offset(y:-170)
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Per espandere la vista per riempire l'intera finestra
        .background(CustomColor.backgroundColorDark)
        .ignoresSafeArea()
    }
}

#Preview {
    HousingDetailView(house: Housing(name: "Billings", imageName: "simicon", description: "Get A Sim Card of your Choice. Network Providers - Tim, WindTre, Vodafone , Iliad, Fastweb, Lyca\nBut we suggest you to take Tim or Vodafone\nId document required (passport)\nStore Timings generally from 10 AM to 20:00 PM (Monday To Friday)\nYou can get sim card as soon as you get down from the bus at the city centre(GARIBALDI)", category: .billings, hint: "If you want to get connected to world, get your sim card", isSaved: false))
}
