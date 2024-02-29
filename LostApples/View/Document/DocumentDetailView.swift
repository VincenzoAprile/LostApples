//
//  ProvaDetailView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 23/02/24.
//

import SwiftUI

struct DocumentDetailView: View {
    @State var doc: Document
    
    var body: some View {
        VStack {
            Text(doc.name)
                .font(.title)
                .multilineTextAlignment(.leading)
                .bold()
                .foregroundStyle(CustomColor.textColor)
                .offset(x: 0, y: 10)
                .padding()
            
            Text(doc.description)
                .multilineTextAlignment(.leading)
                .font(.callout)
                .foregroundStyle(CustomColor.textColor)
                .padding()
                .offset(x: 0, y: -5)

            // Altre viste per visualizzare altre proprietà del documento, se necessario
            
            DirectionButton()
            
        }
        .offset(y:-170)
        .frame(maxWidth: .infinity, maxHeight: .infinity) // Per espandere la vista per riempire l'intera finestra
        .background(CustomColor.backgroundColorDark)
        .ignoresSafeArea()

    }
}



#Preview{
    DocumentDetailView(doc: Document(name: "Sim Card", imageName: "simicon", description: "Get A Sim Card of your Choice. Network Providers - Tim, WindTre, Vodafone , Iliad, Fastweb, Lyca\nBut we suggest you to take Tim or Vodafone\nId document required (passport)\nStore Timings generally from 10 AM to 20:00 PM (Monday To Friday)\nYou can get sim card as soon as you get down from the bus at the city centre(GARIBALDI)", category: .simcard, hint: "If you want to get connected to world, get your sim card", isSaved: false))
}
