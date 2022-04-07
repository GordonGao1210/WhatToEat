//
//  EdibleAdd.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/7/21.
//

import SwiftUI

struct EdibleAdd: View {
    @EnvironmentObject var peoplePort:Portfolio
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var people: People
    @State var name:String = ""
    @State var engName:String = ""
    @State var description:String = ""
    
    
    var body: some View {
        VStack {
            Spacer()
            Text("Adding Edible")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
            
            TextField (
                "Put Name Here",
                text:$name
            )
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField (
                "Put English Name Here",
                text:$engName
            )
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField (
                "Put Description Here",
                text:$description
            )
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            

            Button("Complete", action: {
                let NEdible:Edible = Edible(name,engName,description)
                var edibleList = people.edibles
                edibleList.append(NEdible)
                edibleList.sort{
                    $0.name < $1.name
                }
                let Npeople:People = People(people.name, people.allergies, people.suspects, edibleList)
                peoplePort.updatePeople(Npeople)
                
                self.presentationMode.wrappedValue.dismiss()
                
                
            })
            Spacer()
        }
    }
}

struct EdibleAdd_Previews: PreviewProvider {
    @EnvironmentObject var peoplePort:Portfolio
    
    static var previews: some View {
        EdibleAdd(people: People("Gordon",[Allergy("蛋清","egg yolk",5,"nonononononon")],[Suspect("山楂","shanzha","waiting")],[Edible("馒头","dough","吃吧吃吧")]))
    }
}
