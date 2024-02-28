//
//  Housing.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 21/02/24.
//

import Foundation
import SwiftUI

enum housingCategory {
    case billings
    case accomodation
}



class Housing: Identifiable{
    let id: UUID = UUID()
    let name:String
    let imageName: String 
    let description: String
    let category: housingCategory
    let hint: String
    let isSaved: Bool
    
    
    init(name: String, imageName: String, description: String, category: housingCategory, hint: String, isSaved: Bool) {
        self.name = name
        self.imageName = imageName
        self.description = description
        self.category = category
        self.hint = hint
        self.isSaved = isSaved
    }
}

extension Housing {
    static let list = [
        Housing(name: "Billings", imageName: "simicon", description: "Get A Sim Card of your Choice. Network Providers - Tim, WindTre, Vodafone , Iliad, Fastweb, Lyca\nBut we suggest you to take Tim or Vodafone\nId document required (passport)\nStore Timings generally from 10 AM to 20:00 PM (Monday To Friday)\nYou can get sim card as soon as you get down from the bus at the city centre(GARIBALDI)", category: .billings, hint: "If you want to get connected to world, get your sim card", isSaved: false),
        
        Housing(name: "Accomodations",imageName: "agenziaentrata", description: "Get your Appointment\nlist of documents u need to carry to office - Passport with visa\nUniversity Enrolment Letter\nUniversity Admission Letter\nOffice timings generally from 8:00AM to 20:00 PM (Monday To Friday)", category: .accomodation, hint: "Get your Tax code done here", isSaved: false),
        
    ]
}
