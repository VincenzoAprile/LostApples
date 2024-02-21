//
//  HousingList.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 21/02/24.
//

import Foundation
class HousingList: ObservableObject{
    
    @Published var housing: [Housing] = [Housing(name: "Accomodation"),
                                           
        Housing(name: "Billings")
                                        
    ]
    
    
    
}
