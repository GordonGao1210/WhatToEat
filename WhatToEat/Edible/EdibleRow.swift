//
//  EdibleRow.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/4/21.
//

import SwiftUI

struct EdibleRow: View {
    var edible:Edible
    
    
    var body: some View {
        HStack {
            Text(edible.name)
                .font(.headline)
                .fontWeight(.black)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(alignment: .leading)
                
            Spacer()
            
            Text(edible.engName)
                .font(.headline)
                .fontWeight(.black)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(alignment: .trailing)
        }
    }
}

struct EdibleRow_Previews: PreviewProvider {
    static var previews: some View {
        EdibleRow(edible: Edible("馒头","dough","吃吧吃吧"))
    }
}
