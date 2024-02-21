//
//  Housing.swift
//  LostApples
//
//  Created by Vincenzo Aprile on 21/02/24.
//

import Foundation
import SwiftUI

struct Housing: Identifiable, Equatable, Hashable{
    var id: UUID = UUID()
    var name:String
    var imageName: String = "no name"
    var description: String = "No description"
    var category: String = "no category"
    var hint: String = "no hint"
    var isSaved: Bool = false
}
