//
//  FunctionView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 19/02/24.
//

import SwiftUI

struct FunctionView: View {
    @ObservedObject var functionList = FunctionList()
    
    var body: some View {
        VStack {
            Spacer()
            
            List {
                ForEach(functionList.function) { function in
                    SingleFunctionView(function: function)
                        .contextMenu {
                            Button(action: {
                                if let index = functionList.function.firstIndex(of: function) {
                                    functionList.function.remove(at: index)
                                }
                            }) {
                                Text("Delete")
                                Image(systemName: "trash")
                            }
                        }
                }
                .onDelete { indexSet in
                    functionList.function.remove(atOffsets: indexSet)
                }
            }
            .listStyle(PlainListStyle())
            .background(Color.white) // Adjust background color as needed
            .edgesIgnoringSafeArea(.all)
            .padding(.horizontal, 20) // Adjust the horizontal padding as needed
            
            Spacer()
        }
    }
}





#Preview {
    FunctionView()
}
