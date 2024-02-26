//
//  Sim.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 19/02/24.
//

import Foundation
import SwiftUI


enum documentCategory {
    case simcard
    case cf
    case cs
}

class Document: Identifiable {
    let id: UUID = UUID()
    let name:String
    let imageName: String
    let description: String
    let category: documentCategory
    let hint: String
    var isSaved: Bool
    
    init(name: String, imageName: String, description: String, category: documentCategory, hint: String, isSaved: Bool) {
        self.name = name
        self.imageName = imageName
        self.description = description
        self.category = category
        self.hint = hint
        self.isSaved = isSaved
    }
}

extension Document {
    static let list = [
        Document(name: "Sim Card", imageName: "simicon", description: "Get A Sim Card of your Choice. Network Providers - Tim, WindTre, Vodafone , Iliad, Fastweb, Lyca\nBut we suggest you to take Tim or Vodafone\nId document required (passport)\nStore Timings generally from 10 AM to 20:00 PM (Monday To Friday)\nYou can get sim card as soon as you get down from the bus at the city centre(GARIBALDI)", category: .simcard, hint: "If you want to get connected to world, get your sim card", isSaved: false),
        
        Document(name: "CodiceFiscale",imageName: "agenziaentrata", description: "Get your Appointment\nlist of documents u need to carry to office - Passport with visa\nUniversity Enrolment Letter\nUniversity Admission Letter\nOffice timings generally from 8:00AM to 20:00 PM (Monday To Friday)", category: .cf, hint: "Get your Tax code done here", isSaved: false),
        
        Document(name: "Catering",imageName: "foodicon", description: "Adisurc offers the catering service at canteens and affliated bodies at discounted prices.\nThe application is submitted exclusively through the online services.\nGo to this link for clear information and application process.", category: .cs, hint: "Adisurc offers the Catering service at affiliated Canteens", isSaved: false)
    ]
}


