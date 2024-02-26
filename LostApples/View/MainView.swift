//
//  MainView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 16/02/24.
//

import SwiftUI

struct MainView: View {
    @State private var showFunctionView = false
    
    var body: some View {
        VStack(alignment: .center) {
            
            DocumentationButton()
            .padding(.top, 200)
            
            
            Spacer()
            
            AccomodationButton()
                .padding(.top, -100)
            
            Spacer()
        }
        .background(CustomColor.backgroundColorDark)
    }
    
}



#Preview {
    MainView()
}
