////
////  DocumentationButton.swift
////  LostApples
////
////  Created by Vincenzo Aprile on 16/02/24.
////
//
import SwiftUI

struct DocumentationButton: View {
    var body: some View {
            NavigationLink(destination: DocumentsListView(documentList: Document.list)) {
                Text("Documentation")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 10)) // Imposta i bordi curvi
                    .font(.title)
            }
            .padding()
        
        }
    }





#Preview {
    DocumentationButton()
}
