////
////  DocumentationButton.swift
////  LostApples
////
////  Created by Vincenzo Aprile on 16/02/24.
////
//
import SwiftUI

struct DocumentationButton: View {
    @State private var isDocumentsListViewPresented = false
    
    var body: some View {
        Button(action: {
            isDocumentsListViewPresented = true
        }) {
            Text("Documentation")
        }
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10)))
        .buttonStyle(.bordered)
        .controlSize(.extraLarge)
        .frame(maxWidth: .infinity, alignment: .center)
        .font(.title)
        .fullScreenCover(isPresented: $isDocumentsListViewPresented) {
            // Passa un elenco di documenti a DocumentsListView
            DocumentsListView(documentList: Document.list)
        }
    }
}
    
#Preview {
    DocumentationButton()
}
