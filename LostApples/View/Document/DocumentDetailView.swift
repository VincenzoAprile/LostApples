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
                .foregroundColor(CustomColor.textColor)
                .offset(x: 0, y: 100)
                .padding()
            
            VStack(alignment: .leading, spacing: 4) {
                ForEach(doc.description.split(separator: "\n"), id: \.self) { line in
                    HStack {
                        Text("•") // Aggiungi un puntino all'inizio di ogni riga
                            .foregroundColor(CustomColor.textColor)
                            .padding(.trailing, 5) // Aggiungi spazio tra il puntino e il testo
                        Text(String(line))
                            .multilineTextAlignment(.leading)
                            .font(.callout)
                            .foregroundColor(CustomColor.textColor)
                    }
                }
            }
            .padding()
            .offset(x: 0, y: 90)
            
            // Altre viste per visualizzare altre proprietà del documento, se necessario
            
            DirectionButton()
                .offset(x: 0, y: 130)
            
        }
        .offset(y:-170)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColor.backgroundColorDark)
        .ignoresSafeArea()

    }
}



#Preview{
    DocumentDetailView(doc: Document(name: "Sim Card", imageName: "simicon", description: "Get A Sim Card of your Choice. Network Providers - Tim, WindTre, Vodafone , Iliad, Fastweb, Lyca\nBut we suggest you to take Tim or Vodafone\nId document required (passport)\nStore Timings generally from 10 AM to 20:00 PM (Monday To Friday)\nYou can get sim card as soon as you get down from the bus at the city centre(GARIBALDI)", category: .simcard, hint: "If you want to get connected to world, get your sim card", isSaved: false))
}
