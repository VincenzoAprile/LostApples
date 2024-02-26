//
//  ProvaDetailView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 23/02/24.
//

import SwiftUI

struct DocumentDetailView: View {
    var doc: Document
    
    var body: some View {
        VStack {
            Text(doc.name)
                .font(.title)
            Text(doc.description)
                .font(.body)
                .foregroundColor(.gray)
            // Altre viste per visualizzare altre proprietà del documento, se necessario
        }
        .padding()
    }
}


#Preview{
    DocumentDetailView(doc: Document(name: "Carlo", imageName: "Prova", description: "cakbsdfak", category: .simcard, hint: "asfda", isSaved: false))
}
