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
        NavigationStack {
            NavigationView {
                VStack(alignment: .center) {
                    DocumentationButton()
                        .offset(y:-110)
                    AccomodationButton()
                        .offset(y:10)

                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(CustomColor.cardColor)

            }
        }
    }
}





#Preview {
    MainView()
}
