//
//  AllergyDetail.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/4/21.
//

import SwiftUI

struct AllergyDetail: View {
    var allergy: Allergy
    
    var body: some View {
        
        VStack {
            Spacer()
            Text("Allergy Detail")
                .font(.largeTitle)
                .multilineTextAlignment(.leading)
            Spacer()
            HStack(alignment: .top) {
                Text("Name:")
                    .font(.title2)
                Spacer()
                Text(allergy.name)
                    .font(.title2)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            
            HStack(alignment: .top) {
                Text("English Name:")
                    .font(.title2)
                Spacer()
                Text(allergy.engName)
                    .font(.title2)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            HStack(alignment: .top) {
                Text("Level:")
                    .font(.title2)
                Spacer()
                Text(String(allergy.level))
                    .font(.title2)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            HStack(alignment: .top) {
                Text("Description:")
                    .font(.title2)
                Spacer()
                Text(allergy.description)
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

struct AllergyDetail_Previews: PreviewProvider {
    @EnvironmentObject var peoplePort:Portfolio
    
    static var previews: some View {
        AllergyDetail(allergy: Allergy("大米","Rice",5,"啊哈哈哈哈红红火火恍恍惚惚哈哈哈哈哈"))
    }
}
