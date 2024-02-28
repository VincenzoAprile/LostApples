//
//  SingleHousingView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 21/02/24.
//

import SwiftUI

struct SingleHousingView: View {
    
    var housing: Housing
    
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundStyle(.card)
                .frame(width: 360, height: 150)
                .shadow(radius: 20)
            HStack(alignment: .top) {
//                Image(document.imageName)
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(height: 100)
//                    .clipped()
                
                VStack(alignment: .leading) {
                    Text(housing.name)
                        .font(.title3)
                        .bold()
                        .padding(.leading, 20)
                        .foregroundColor(.black)
                    
//                    Text(document.hint)
//                        .padding(-1)
//                        .font(.callout)
//                        .bold()
//                        .fixedSize(horizontal: false, vertical: true)
//                        .padding(.leading, 20)
//                        .foregroundColor(.black)
                }
                
                // Aggiungi spazio tra il testo e i pulsanti
                
//                DocumentView(document: document)
                // Aggiungi DocumentView come pulsante
//                DirectionButton()
            }
            .frame(width: 320, height: 150)
            
        }    }
}

struct SingleHousingView_Previews: PreviewProvider {
    static var previews: some View {
        
        let housing = Housing(name: "Billings", imageName: "simicon", description: "Get A Sim Card of your Choice. Network Providers - Tim, WindTre, Vodafone , Iliad, Fastweb, Lyca\nBut we suggest you to take Tim or Vodafone\nId document required (passport)\nStore Timings generally from 10 AM to 20:00 PM (Monday To Friday)\nYou can get sim card as soon as you get down from the bus at the city centre(GARIBALDI)", category: .billings, hint: "If you want to get connected to world, get your sim card", isSaved: false)
        
        return SingleHousingView(housing: housing)
    }
}
