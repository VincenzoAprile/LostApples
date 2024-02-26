////
////  SimView.swift
////  LostApples
////
////  Created by Vincenzo Aprile on 19/02/24.
////
//
import SwiftUI

struct SingleFunctionView: View {
    var document: Document // Assicurati che Document sia un tipo di dato definito
    
    var body: some View {
        ZStack {
            HStack(alignment: .top) {
                Image(document.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                    .clipped()
                    .offset(y: 20)
                
                VStack(alignment: .leading) {
                    Text(document.name)
                        .font(.title3)
                        .bold()
                        .padding(.leading, 20)
                        .foregroundColor(.black)
                    
                    Text(document.hint)
                        .padding(-1)
                        .font(.callout)
                        .bold()
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.leading, 20)
                        .foregroundColor(.black)
                }
            }
            .frame(width: 320, height: 150)
            .padding()
            .background(Color.gray) // Aggiungere CustomColor.cardColor se necessario
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}


#Preview {
        let document = Document(name: "Sim Card", imageName: "simicon", description: "Get A Sim Card of your Choice. Network Providers - Tim, WindTre, Vodafone , Iliad, Fastweb, Lyca\nBut we suggest you to take Tim or Vodafone\nId document required (passport)\nStore Timings generally from 10 AM to 20:00 PM (Monday To Friday)\nYou can get sim card as soon as you get down from the bus at the city centre(GARIBALDI)", category: .simcard, hint: "If you want to get connected to world, get your sim card", isSaved: false)
    return SingleFunctionView(document: document)
}
