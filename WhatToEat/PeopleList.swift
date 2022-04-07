//
//  PeopleList.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/3/21.
//

import SwiftUI

struct PeopleList: View {
    @EnvironmentObject var peoplePort:Portfolio
    @State private var action: Int? = 0

    
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(peoplePort.peoples) { people in
                        NavigationLink(destination: PeopleDetail(people: people).environmentObject(peoplePort)) {
                            PeopleRow(people: people)
                        }
                    
                    }
                    .onDelete(perform: removePeople)
                    
                }
                .navigationTitle("People List")
                .toolbar {
                    EditButton()
                }
                
                
                NavigationLink(destination: PeopleAdd(), tag: 1, selection: $action) {
                    EmptyView()
                }
                Button("Add People", action: {
                    self.action = 1
                    
                })

            }.navigationBarBackButtonHidden(true)

        }
    }
    
    func removePeople(at offsets: IndexSet) {
        peoplePort.peoples.remove(atOffsets: offsets)
        peoplePort.save()
    }
    
}





struct PeopleList_Previews: PreviewProvider {
    @EnvironmentObject var peoplePort:Portfolio
    
    static var previews: some View {
        PeopleList().environmentObject(Portfolio())
            
    }
}
