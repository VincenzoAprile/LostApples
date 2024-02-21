//
//  InformationButton.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 20/02/24.
//

import SwiftUI

struct InformationButton: View {
    var body: some View {
        Image(systemName: "info.circle.fill")
            .controlSize(.small)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
            .buttonStyle(.bordered)
            .font(.title)
        
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.trailing, 50)
            .padding(.top, -60)
            .padding(.horizontal,-20)

    }
}

#Preview {
    InformationButton()
}
