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
        
        NavigationStack{
            
            ScrollView{
                
                VStack(alignment: .leading, spacing: -50) {
                    
                    ForEach(function.function){ functions in
                        NavigationLink{
                            FuncShowView(function: functions)
                        } label: {
                            ZStack{
                                
                                SingleFunctionView(function: functions)
                                    .padding()
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    .padding(-20)
                                
                                InformationButton()
                                
                                DirectionButton()
                                
                                
                                
                            } //End ZStack
                            
                            
                        }//End ForEach
                        
                    }//End VStack
                    .shadow(radius: 10)
                    
                }//End ScrollView
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                //.padding(.all)
                
            }//End NavigationStack
            .background(CustomColor.backgroundColorDark)
            
        }
    }
}

#Preview {
    FunctionView()
}
