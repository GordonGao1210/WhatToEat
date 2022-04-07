//
//  SuspectDetail.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/4/21.
//

import SwiftUI

struct SuspectDetail: View {
    var suspect:Suspect
    
    var body: some View {
        VStack {
            Spacer()
            Text("Suspect Detail")
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
            Spacer()
            HStack(alignment: .top) {
                Text("Name:")
                    .font(.title2)
                Spacer()
                Text(suspect.name)
                    .font(.title2)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            
            HStack(alignment: .top) {
                Text("English Name:")
                    .font(.title2)
                Spacer()
                Text(suspect.engName)
                    .font(.title2)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            HStack(alignment: .top) {
                Text("Description:")
                    .font(.title2)
                Spacer()
                Text(suspect.description)
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

struct SuspectDetail_Previews: PreviewProvider {
    static var previews: some View {
        SuspectDetail(suspect: Suspect("山楂","shanzha","少吃一点哈哈哈哈"))
    }
}
