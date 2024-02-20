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
                    
                 /*   Image(function.imageName)
                        .resizable()
                        .scaledToFit()
                        */
                    
                    Text(function.name)
                        .font(.title)
                        .multilineTextAlignment(.leading)
                        .bold()
                      //  .foregroundStyle(CustomColor.cardTextColor)
                        .offset(x: 0, y: -200)
                        .padding()
                        
                    
                    
                    
                    Text(function.description)
                    .multilineTextAlignment(.leading)
                        .font(.callout)
                       // .foregroundStyle(CustomColor.cardTextColor)
                        .padding()
                        .offset(x: 0, y: -200)
                    
                }
                
            }
        }

#Preview {
    let function = Function(name: "Sim Card", imageName: "simicon", description: "Get A Sim Card of your Choice. Network Providers - Tim, WindTre, Vodafone , Iliad, Fastweb, Lyca\nBut we suggest you to take Tim or Vodafone\nId document required (passport)\nStore Timings generally from 10 AM to 20:00 PM (Monday To Friday)\nYou can get sim card as soon as you get down from the bus at the city centre(GARIBALDI)", category: "simCard", hint: "If u want to get connected to world, Get your sim card")
    
    return  FuncShowView(function: function)
}
