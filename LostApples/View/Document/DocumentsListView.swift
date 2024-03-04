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
        NavigationStack{
            ZStack{
                VStack {
                    ForEach(documentList) { document in
                        NavigationLink(destination: DocumentDetailView(doc: document), label: {
                            SingleDocumentView(document: document)
                        })
                        .padding(.bottom, 8)
                        
                    }
                    Spacer()
                }
                
            }
            .navigationTitle("Documentation")
        }
    }
}



struct DocumentsListView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentsListView(documentList: Document.list)
    }
}
