//
//  InformationButton.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 20/02/24.
//

import SwiftUI

struct InformationButton: View {
    
    @State private var isFuncShowPresented = false
    
    var body: some View {
        Image(systemName: "info.circle.fill")
            .controlSize(.small)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            .buttonStyle(.bordered)
            .font(.title)
            .offset(x: 35) // Sposta il bottone di -50 punti lungo l'asse x (verso sinistra)
    }
}

#Preview {
    InformationButton()
}
