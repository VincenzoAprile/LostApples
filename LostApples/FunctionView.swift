//
//  FunctionView.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 19/02/24.
//

import SwiftUI

struct FunctionView: View {
    
    var function = FunctionList()
    
    var body: some View {
        ScrollView{
            VStack {
                ForEach(function.function){ functions in
                    SingleFunctionView(function: functions)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(10)
                }
                .padding()
            }
        }
    }
}

#Preview {
    FunctionView()
}
