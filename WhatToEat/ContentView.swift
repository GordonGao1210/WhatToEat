//
//  ContentView.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/2/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        PeopleList()
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Portfolio())
            
    }
}
