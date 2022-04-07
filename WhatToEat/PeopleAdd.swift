//
//  PeopleAdd.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/4/21.
//

import SwiftUI

struct PeopleAdd: View {
    @EnvironmentObject var peoplePort:Portfolio
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State var name:String = ""
    
    var body: some View {
        
        VStack {
            Spacer()
            Spacer()

            Text("Adding People")
                .font(.largeTitle)
                .fontWeight(.heavy)
            TextField (
                "Put Name Here",
                text:$name
            )
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Spacer()
            Spacer()
            Spacer()
            

            Button("Complete", action: {
                let Npeople:People = People(name, [Allergy](), [Suspect](), [Edible]())
                peoplePort.addPeople(Npeople)
                
                self.presentationMode.wrappedValue.dismiss()
                
                
                
            })
            Spacer()
        }
        
    }
}

struct PeopleAdd_Previews: PreviewProvider {
    @EnvironmentObject var peoplePort:Portfolio
    
    static var previews: some View {
        PeopleAdd()
    }
}
