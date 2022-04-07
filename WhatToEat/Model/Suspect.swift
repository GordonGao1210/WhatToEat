//
//  Suspect.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/3/21.
//

import Foundation
import SwiftUI

struct Suspect: Hashable, Codable, Identifiable {
    var id = UUID()
    var name:String
    var engName:String
    var description:String
    
    init(_ Nname:String, _ NengName:String , _ Ndescription:String) {
        name = Nname
        engName = NengName
        description = Ndescription
    }
    
    
//    func edit(_ Nname:String, _ Ndescription:String) {
//        name = Nname
//        description = Ndescription
//    }
    
    
}
