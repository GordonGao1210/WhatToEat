//
//  AllergyRow.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/4/21.
//

import SwiftUI

struct AllergyRow: View {
    var allergy:Allergy
    
    var body: some View {
        HStack {
            Text(allergy.name)
                .font(.headline)
                .fontWeight(.black)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 100.0, alignment: .leading)
            
            Spacer()
            Text(String(allergy.level))
                .font(.headline)
                .fontWeight(.black)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
            Text(allergy.engName)
                .font(.headline)
                .fontWeight(.black)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 100.0, alignment: .trailing)
        }
        
        
        
    }
}

struct AllergyRow_Previews: PreviewProvider {
    static var previews: some View {
        AllergyRow(allergy: Allergy("大米","Rice",5,"啊哈哈哈哈红红火火恍恍惚惚哈哈哈哈哈"))
        
    }
}
