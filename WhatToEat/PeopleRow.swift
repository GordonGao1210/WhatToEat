//
//  PeopleRow.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/4/21.
//

import SwiftUI

struct PeopleRow: View {
    var people: People
    
    var body: some View {
        HStack {
            Spacer()
            Text(people.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.all)
            Spacer()
        }
    }
}

struct PeopleRow_Previews: PreviewProvider {
    static var previews: some View {
        PeopleRow(people: People("Gordon",[Allergy("大米","rice",3,"NoNoNoNoNo")],[Suspect("山楂","shanzha","abc")],[Edible("猪肉","zhutou","abc")]))
    }
}
