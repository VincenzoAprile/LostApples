//
//  DocumentsListView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 26/02/24.
//

import SwiftUI

struct DocumentsListView: View {
    
    var documentList: [Document] // Assicurati che documentList sia un array di Document
    
    var body: some View {
        VStack {
            ForEach(documentList) { document in
                SingleDocumentView(document: document)
            }
        }
    }
}



struct DocumentsListView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentsListView(documentList: Document.list)
    }
}
