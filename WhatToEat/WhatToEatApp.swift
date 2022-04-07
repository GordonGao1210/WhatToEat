//
//  WhatToEatApp.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/2/21.
//

import SwiftUI

@main
struct WhatToEatApp: App {
    @StateObject var peoplePort:Portfolio = Portfolio()
//    var peoples:[People] = load("myData.json")
    
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(peoplePort)
        }
    }
}
