//
//  EdibleDetail.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/4/21.
//

import SwiftUI

struct EdibleDetail: View {
    var edible:Edible
    
    var body: some View {
        VStack {
            Spacer()
            Text("Edible Detail")
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
            Spacer()
            HStack(alignment: .top) {
                Text("Name:")
                    .font(.title2)
                Spacer()
                Text(edible.name)
                    .font(.title2)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            
            HStack(alignment: .top) {
                Text("English Name:")
                    .font(.title2)
                Spacer()
                Text(edible.engName)
                    .font(.title2)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            HStack(alignment: .top) {
                Text("Description:")
                    .font(.title2)
                Spacer()
                Text(edible.description)
                    .font(.title3)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            Spacer()
            HStack {
                Spacer()
                Button("Edit", action:{})
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            Spacer()
        }
    }
}

struct EdibleDetail_Previews: PreviewProvider {
    static var previews: some View {
        EdibleDetail(edible: Edible("馒头","dough","吃吧吃吧"))
    }
}
