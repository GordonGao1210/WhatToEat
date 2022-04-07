//
//  Portfolio.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/4/21.
//


import Foundation


class Portfolio: ObservableObject {
    @Published var peoples = [People]()
    let filename = "myData.json"
    
    init() {
        load()
    }
    
    func getPeople(_ people:People) -> Int {
        for i in 0...peoples.count {
            if peoples[i].name.elementsEqual(people.name) {
                return i
            }
        }
        return 0
    }
    
    func getAllergy(_ people: People, _ allergy: Allergy) -> Int {
        let index = getPeople(people)
        for i in 0...peoples[index].allergies.count {
            if peoples[index].allergies[i].name.elementsEqual(allergy.name) {
                return i
            }
        }
        return 0
    }
    
    func updatePeoples(_ Npeoples: [People]) {
        peoples = Npeoples
        save()
    }
    
    func addPeople(_ Npeople:People) {
        peoples.append(Npeople)
        save()
    }

    func deletePeople(_ Dpeople:People) {
        for i in 0...peoples.count {
            if peoples[i].id == Dpeople.id {
                peoples.remove(at: i)
                save()
                return
            }
        }
    }
    
    func updatePeople(_ Npeople:People) {
        for i in 0...peoples.count {
            if peoples[i].name.elementsEqual(Npeople.name) {
                peoples[i] = Npeople
                save()
                return
            }
        }
    }
    
    
    func load() {
        let data: Data
        
        let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        let pathWithFileName = documentDirectory!.appendingPathComponent(filename)

        do {
            data = try Data(contentsOf: pathWithFileName)
        } catch {
            print("Couldn't load \(filename) from main bundle:\n\(error)")
            return
        }

        do {
            let decoder = JSONDecoder()
            peoples = try decoder.decode([People].self, from: data)
        } catch {
            print("Couldn't parse \(filename) as [People]:\n\(error)")
            return
        }
    }
    
    
    func save() {
        let encoder = JSONEncoder()
        let data: Data
        
        do {
            data = try encoder.encode(peoples)
        } catch {
            print("Couldn't encode peoples")
            return
        }
        
        let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        let pathWithFileName = documentDirectory!.appendingPathComponent(filename)

        do {
            try data.write(to: pathWithFileName)
        } catch {
            print("Couldn't write into \(filename):\(error)")
            return
        }
    }
    
}
