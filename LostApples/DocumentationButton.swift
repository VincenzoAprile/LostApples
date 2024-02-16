//
//  DocumentationButton.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 16/02/24.
//

import SwiftUI

struct DocumentationButton: View {
    var body: some View {
        Button("Documentation") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
        .buttonStyle(.bordered)
        .controlSize(.extraLarge)
        .frame(maxWidth: .infinity, alignment: .center)
        .font(.title)
    }
}

#Preview {
    DocumentationButton()
}
