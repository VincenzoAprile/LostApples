//
//  FunctionView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 19/02/24.
//

import SwiftUI

struct FunctionView: View {
    @State private var documents: Document // Utilizzare uno stato per mantenere l'elenco dei documenti
    
    var body: some View {
        VStack {
                    ForEach(documents) { singleDocument in
                    SingleFunctionView(document: singleDocument)
                        .contextMenu {
                            Button(action: {
                                if let index = documents.firstIndex(of: singleDocument) {
                                    documents.remove(at: index)
                                }
                            }) {
                                Text("Delete")
                                Image(systemName: "trash")
                            }
                        }
                }
            .listStyle(PlainListStyle())
            .background(Color.white) // Adjust background color as needed
            .edgesIgnoringSafeArea(.all)
            .padding(.horizontal, 20) // Adjust the horizontal padding as needed
            
            Spacer()
        }
        .onAppear {
            // Popolare l'elenco dei documenti iniziale (se necessario)
        }
    }
}

#Preview {
    
    let document = Document(name: "Sim Card", imageName: "simicon", description: "Get A Sim Card of your Choice. Network Providers - Tim, WindTre, Vodafone , Iliad, Fastweb, Lyca\nBut we suggest you to take Tim or Vodafone\nId document required (passport)\nStore Timings generally from 10 AM to 20:00 PM (Monday To Friday)\nYou can get sim card as soon as you get down from the bus at the city centre(GARIBALDI)", category: .simcard, hint: "If you want to get connected to world, get your sim card", isSaved: false)
    
    FunctionView(documents: document)
}





