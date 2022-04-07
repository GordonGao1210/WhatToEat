//
//  PeopleDetail.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/4/21.
//

import SwiftUI

struct PeopleDetail: View {
    @EnvironmentObject var peoplePort:Portfolio
    var people:People
    @State private var action: Int? = 0
    
    
    
    var body: some View {
        NavigationLink(destination: AllergyAdd(people: peoplePort.peoples[peoplePort.getPeople(people)]), tag: 1, selection: $action) {
            EmptyView()
        }
        NavigationLink(destination: SuspectAdd(people: peoplePort.peoples[peoplePort.getPeople(people)]), tag: 2, selection: $action) {
            EmptyView()
        }
        NavigationLink(destination: EdibleAdd(people: peoplePort.peoples[peoplePort.getPeople(people)]), tag: 3, selection: $action) {
            EmptyView()
        }
        
        
        List {
                
            Section(header: Text("Allergy")) {
                ForEach(peoplePort.peoples[peoplePort.getPeople(people)].allergies) { allergy in NavigationLink(destination: AllergyDetail(allergy: allergy)) {
                    AllergyRow(allergy: allergy)
                    }
                }
                .onDelete(perform: removeAllergy)
                    
                    
                HStack {
                    Spacer()
                    Button("Add Allergy", action: {
                        self.action = 1
                            
                    })
                    .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                    
                    
            }
            Section(header: Text("Suspect")) {
                ForEach(peoplePort.peoples[peoplePort.getPeople(people)].suspects) { suspect in NavigationLink(destination: SuspectDetail(suspect: suspect)) {
                        SuspectRow(suspect: suspect)
                    }
                }
                .onDelete(perform: removeSuspect)
                HStack {
                    Spacer()
                    Button("Add Suspect", action: {
                        self.action = 2
                            
                    })
                    .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
            }
            Section(header: Text("Edible")) {
                ForEach(peoplePort.peoples[peoplePort.getPeople(people)].edibles) { edible in NavigationLink(destination: EdibleDetail(edible: edible)) {
                        EdibleRow(edible: edible)
                    }
                }
                .onDelete(perform: removeEdible)
                HStack {
                    Spacer()
                    Button("Add Edible", action: {
                        self.action = 3
                            
                    })
                    .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
                
            }
        }
        .navigationTitle(people.name+"'s Detail")
//        .listStyle(SidebarListStyle())
            

    }
    
    func removeAllergy(at offsets: IndexSet) {
        var allergyList = peoplePort.peoples[peoplePort.getPeople(people)].allergies
        allergyList.remove(atOffsets: offsets)
        peoplePort.updatePeople(People(people.name
                                       , allergyList, people.suspects, people.edibles))
    }
    
    func removeSuspect(at offsets: IndexSet) {
        var suspectList = peoplePort.peoples[peoplePort.getPeople(people)].suspects
        suspectList.remove(atOffsets: offsets)
        peoplePort.updatePeople(People(people.name
                                       , people.allergies, suspectList, people.edibles))
    }
    
    func removeEdible(at offsets: IndexSet) {
        var edibleList = peoplePort.peoples[peoplePort.getPeople(people)].edibles
        edibleList.remove(atOffsets: offsets)
        peoplePort.updatePeople(People(people.name
                                       , people.allergies, people.suspects, edibleList))
    }
    
}




struct PeopleDetail_Previews: PreviewProvider {
    @EnvironmentObject var peoplePort:Portfolio
    
    static var previews: some View {
        PeopleDetail(people: People("Gordon",[Allergy("蛋清","egg yolk",5,"nonononononon")],[Suspect("山楂","shanzha","waiting")],[Edible("馒头","dough","吃吧吃吧")])).environmentObject(Portfolio())
    }
}
