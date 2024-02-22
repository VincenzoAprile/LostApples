//
//  DirectionButton.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 20/02/24.
//

import SwiftUI

struct DirectionButton: View {
    var body: some View {
        VStack(spacing: 20) { // Imposta lo spazio tra gli elementi a 20 punti
            Button(action: {
                // Azione del bottone
            }) {
                Image(systemName: "map.circle")
            }
            .controlSize(.small)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            .font(.title)
            
            Spacer(minLength: 0) // Assicura che il bottone venga spostato esattamente sotto l'elemento precedente
        }
        .offset(x:-5, y: 85) // Sposta il contenuto verso il basso di 20 punti

    }
}




#Preview {
    DirectionButton()
}
