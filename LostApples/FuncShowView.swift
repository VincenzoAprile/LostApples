//
//  FuncShowView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 20/02/24.
//

import SwiftUI

struct FuncShowView: View {
    var function : Function
    
    var body: some View {
        VStack(alignment: .center){
            Text(function.name)
                .font(.title)
                .multilineTextAlignment(.leading)
                .bold()
                .padding()
                .offset(x: 0, y: -200)
            
            Text(function.description)
                .multilineTextAlignment(.leading)
                .font(.callout)
                .padding()
                .offset(x: 0, y: -200)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(CustomColor.backgroundColorDark) // Imposta il colore di sfondo
        .ignoresSafeArea()
    }
}


#Preview {
    let function = Function(name: "Sim Card", imageName: "simicon", description: "Get A Sim Card of your Choice. Network Providers - Tim, WindTre, Vodafone , Iliad, Fastweb, Lyca\nBut we suggest you to take Tim or Vodafone\nId document required (passport)\nStore Timings generally from 10 AM to 20:00 PM (Monday To Friday)\nYou can get sim card as soon as you get down from the bus at the city centre(GARIBALDI)", category: "simCard", hint: "If u want to get connected to world, Get your sim card")
    
    return  FuncShowView(function: function)
}
