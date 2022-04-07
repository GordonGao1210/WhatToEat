//
//  SuspectRow.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/4/21.
//

import SwiftUI

struct SuspectRow: View {
    var suspect:Suspect
    
    
    var body: some View {
        HStack {
            Text(suspect.name)
                .font(.headline)
                .fontWeight(.black)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(alignment: .leading)
                
            Spacer()
            Text(suspect.engName)
                .font(.headline)
                .fontWeight(.black)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(alignment: .trailing)
            
        }
    }
}

struct SuspectRow_Previews: PreviewProvider {
    static var previews: some View {
        SuspectRow(suspect: Suspect("山楂","shanzha","少吃一点哈哈哈哈"))
    }
}
