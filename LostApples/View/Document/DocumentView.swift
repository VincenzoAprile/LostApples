//
//  ProvaView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 23/02/24.
//

import SwiftUI

struct DocumentView: View {
    var document: Document
    
    var body: some View {
        
            NavigationLink(destination: DocumentDetailView(doc: document)) {
                Image(systemName: "info.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue) // Colore del pulsante
            }                // Rimuove lo stile di default di Button
        }
    
}
    

#Preview {
    DocumentView(document: Document.list.first!)
}



