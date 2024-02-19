//
//  SimList.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 19/02/24.
//

import Foundation
class FunctionList: ObservableObject{
    
    @Published var function: [Function] = [Function(name: "Tim", imageName: "simicon", description: "Get A Sim Card of your Choice. Network Providers - Tim, WindTre, Vodafone , Iliad, Fastweb, Lyca\nBut we suggest you to take Tim or Vodafone\nId document required (passport)\nStore Timings generally from 10 AM to 20:00 PM (Monday To Friday)\nYou can get sim card as soon as you get down from the bus at the city centre(GARIBALDI)", category: "simCard", hint: "If u want to get connected to world, Get your sim card"),
                                           
        Function(name: "CodiceFiscale",imageName: "agenziaentrata", description: "Get your Appointment\nlist of documents u need to carry to office - Passport with visa\nUniversity Enrolment Letter\nUniversity Admission Letter\nOffice timings generally from 8:00AM to 20:00 PM (Monday To Friday)", category: "cfDoc", hint: "Get u Tax code done here"),
                                           
        Function(name: "Catering Service",imageName: "foodicon", description: "Adisurc offers the catering service at canteens and affliated bodies at discounted prices.\nThe application is submitted exclusively through the online services.\nGo to this link for clear information and application process.", category: "csDoc", hint: "Adisurc offers the Catering service at affiliated Canteens")
                                           
                                        
    ]
    
    
    
}
