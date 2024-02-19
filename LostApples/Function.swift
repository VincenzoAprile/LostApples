//
//  Sim.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 19/02/24.
//

import Foundation
import SwiftUI

struct Function: Identifiable, Equatable, Hashable{
    var id: UUID = UUID()
    var name:String
    var imageName: String = "no name"
    var description: String = "No description"
    var category: String = "no category"
    var hint: String = "no hint"
    var isSaved: Bool = false
}
