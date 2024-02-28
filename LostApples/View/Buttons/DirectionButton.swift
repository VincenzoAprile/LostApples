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
                .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
                .buttonStyle(.bordered)
                .controlSize(.extraLarge)
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title)
        }

    }
}




#Preview {
    DirectionButton()
}
