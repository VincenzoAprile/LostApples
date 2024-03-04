//
//  Accomodation.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 04/03/24.
//

import Foundation
import SwiftUI

class Accomodation: Identifiable{
    let id: UUID = UUID()
    let place:String
    let imageName: String
    let value: String
    let distance: String
    let bathroom: String
    let bed: String

    init(place: String, imageName: String, value: String, distance: String, bathroom: String, bed: String) {
        self.place = place
        self.imageName = imageName
        self.value = value
        self.distance = distance
        self.bathroom = bathroom
        self.bed = bed
    }
}

extension Accomodation {
    static let list = [
        Accomodation(place: "Gianturco", imageName: "gianturco", value: "675", distance: "6.5 km", bathroom: "1", bed: "3"),
        
        Accomodation(place: "San Ferdinando", imageName: "sanferdinando", value: "500", distance: "3 km", bathroom: "1", bed: "1")

        
    ]
}
