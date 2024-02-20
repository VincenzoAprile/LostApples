//
//  DocumentationButton.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 16/02/24.
//

import SwiftUI

struct DocumentationButton: View {
    @State private var isFunctionViewPresented = false
    
    var body: some View {
        Button(action: {
            isFunctionViewPresented = true
        }) {
            Text("Documentation")
        }
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
        .buttonStyle(.bordered)
        .controlSize(.extraLarge)
        .frame(maxWidth: .infinity, alignment: .center)
        .font(.title)
        .fullScreenCover(isPresented: $isFunctionViewPresented) {
            FunctionView()
        }
    }
}


#Preview {
    DocumentationButton()
}
