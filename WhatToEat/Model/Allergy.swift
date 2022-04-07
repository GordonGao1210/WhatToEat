//
//  Allergy.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/3/21.
//

import Foundation
import SwiftUI

struct Allergy: Hashable, Codable, Identifiable {
    var id = UUID()
    var name:String
    var engName:String
    var level:Int
    var description:String
    // @State var date:Date
    
    init(_ Nname:String, _ NengName:String, _ Nlevel:Int, _ Ndescription:String) {
        name = Nname
        engName = NengName
        level = Nlevel
        description = Ndescription
    }

//    func edit(_ Nname:String, _ NengName:String, _ Nlevel:Int, _ Ndescription:String) {
//        name = Nname
//        engName = NengName
//        level = Nlevel
//        description = Ndescription
//    }
}
