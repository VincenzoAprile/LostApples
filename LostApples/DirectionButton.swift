//
//  DirectionButton.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 20/02/24.
//

import SwiftUI

struct DirectionButton: View {
    var body: some View {
        Button("Direction") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))
        .buttonStyle(.bordered)
        .controlSize(.regular)
        .frame(maxWidth: .infinity, alignment: .center)
        .font(.callout)
        
        .padding(.trailing, -250)
        .padding(.top, 130)
        .padding(.horizontal,-20)
    }
}


#Preview {
    DirectionButton()
}
