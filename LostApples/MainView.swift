//
//  MainView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 16/02/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(alignment: .center) {
                    DocumentationButton()
                        .padding(.top, 200) // Aggiunge spazio sopra il DocumentationButton
                    
                    Spacer() // Spazio flessibile per spingere AccomodationButton in basso
                    
                    AccomodationButton()
                .padding(.top, -100)
            
                Spacer()
        }
    }
}

#Preview {
    MainView()
}
