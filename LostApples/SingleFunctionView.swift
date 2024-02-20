//
//  SimView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 19/02/24.
//

import SwiftUI

    
    struct SingleFunctionView: View {
        var function: Function
        
        var body: some View {
            ZStack {
                HStack(alignment: .top) { // HStack per disporre l'immagine e il testo in orizzontale
                    Image(function.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                        .clipped() // Aggiungi padding all'immagine
                    
                    VStack(alignment: .leading) { // VStack per il testo
                        Text(function.name)
                            .font(.title3)
                            .bold()
                            .padding(.leading, 20) // Aggiungi padding sotto il titolo
                            .foregroundStyle(CustomColor.textColor)
                        
                        Text(function.hint)
                            .padding(-1)
                            .font(.callout)
                            .bold()
                            .fixedSize(horizontal: false, vertical: true)
                            .padding(.leading, 20)
                            .foregroundStyle(CustomColor.textColor)
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .frame(height: 200)
                .padding()
            }
            
        }
    }


#Preview {
    let function = Function(name: "Sim Card",imageName: "simicon",description:                             "Get A Sim Card of your Choice. Network Providers - Tim, WindTre, Vodafone , Iliad, Fastweb, Lyca\nBut we suggest you to take Tim or Vodafone\nId document required (passport)\nStore Timings generally from 10 AM to 20:00 PM (Monday To Friday)\nYou can get sim card as soon as you get down from the bus at the city centre(GARIBALDI)", category: "simCard")
    return SingleFunctionView(function: function)
}
