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
            .frame(maxWidth: .infinity, alignment: .center)
            .font(.title)
    }
}

#Preview {
    InformationButton()
}
