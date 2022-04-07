//
//  AllergyAdd.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/6/21.
//

import SwiftUI

struct AllergyAdd: View {
    @EnvironmentObject var peoplePort:Portfolio
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var people: People
    @State var name:String = ""
    @State var engName:String = ""
    @State var level:String = ""
    @State var description:String = ""
    
    
    var body: some View {
        VStack {
            Spacer()


            Text("Adding Allergy")
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
                "Put Level Here",
                text:$level
            )
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.numberPad)
            TextField (
                "Put Description Here",
                text:$description
            )
            .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            

            Button("Complete", action: {
                let NAllergy:Allergy = Allergy(name,engName,Int(level)!,description)
                var allergyList = people.allergies
                allergyList.append(NAllergy)
                allergyList.sort{
                    if $0.level != $1.level {
                        return $0.level > $1.level
                    } else {
                        return $0.name < $1.name
                    }
                }
                let Npeople:People = People(people.name, allergyList, people.suspects, people.edibles)
                peoplePort.updatePeople(Npeople)
                
                self.presentationMode.wrappedValue.dismiss()
                
                
            })
            Spacer()
        }
    }
}

struct AllergyAdd_Previews: PreviewProvider {
    @EnvironmentObject var peoplePort:Portfolio
    
    static var previews: some View {
        AllergyAdd(people: People("Gordon",[Allergy("蛋清","egg yolk",5,"nonononononon")],[Suspect("山楂","shanzha","waiting")],[Edible("馒头","dough","吃吧吃吧")]))
    }
}
