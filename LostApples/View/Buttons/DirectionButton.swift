//
//  DirectionButton.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 20/02/24.
//

import SwiftUI

struct DirectionButton: View {
    
    
    var body: some View {
        
        NavigationLink(destination: DirectionView()) {
            Text("Direction")
                .frame(width: 150, height: 50)
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10)) // Imposta i bordi curvi
                .font(.title)
        }

    }
}




#Preview {
    DirectionButton()
}
