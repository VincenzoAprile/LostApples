//
//  AccomodationView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 04/03/24.
//

import SwiftUI

struct AccomodationView: View {
    var accomodation: Accomodation
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0)
                .foregroundStyle(.card)
                .frame(width: 380, height: 340)
                .shadow(radius: 20)
            
            VStack(alignment: .leading) {
                Text(accomodation.place)
                    .font(.title3)
                    .bold()
                    .padding(.leading, 20)
                    .foregroundColor(.black)
                
                HStack {
                    Spacer() // Spazio flessibile per spingere l'immagine e la concatenazione ai lati
                    
                    VStack(alignment: .center, spacing: 15) {
                        Image(accomodation.imageName) // Immagine di esempio, sostituiscila con la tua immagine
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 320, height: 200)
                            .clipShape(RoundedRectangle(cornerRadius: 25)) // Bordi più tondi
                            .clipped()
                        
                        HStack {
                            Image(systemName: "location")
                                    .font(.callout)
                                    .foregroundColor(.black)
                            
                            Text("\(accomodation.distance) -")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text("\(accomodation.value) € -")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.black)
                            
                            Image(systemName: "bed.double")
                                    .font(.callout)
                                    .foregroundColor(.black)
                            
                            Text("\(accomodation.bed) -")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.black)
                            
                            Text("\(accomodation.bathroom)")
                                .font(.callout)
                                .bold()
                                .foregroundColor(.black)
                            
                            Image(systemName: "toilet")
                                    .font(.callout)
                                    .foregroundColor(.black)
                        }
                        .padding(.leading, -40)
                    }
                    .padding(.horizontal)
                }
                .padding(.horizontal)
                .padding(.bottom, 10)
            }
            .padding(.horizontal)
            .frame(width: 320, height: 150)
        }
    }
}







struct AccomodationView_Previews: PreviewProvider {
    static var previews: some View {
        let accomodation = Accomodation(place: "Gianturco", imageName: "gianturco", value: "675", distance: "6.5 km", bathroom: "1", bed: "3")
        
        return AccomodationView(accomodation: accomodation)
    }
}
