//
//  People.swift
//  WhatToEat
//
//  Created by Shengyun Gao on 6/3/21.
//

import Foundation
import SwiftUI

struct People: Hashable, Codable, Identifiable {
    var id = UUID()
    var name:String
    var allergies:[Allergy] = []
    var suspects:[Suspect] = []
    var edibles:[Edible] = []
    
    init(_ Nname:String, _ Nallergies:[Allergy], _ Nsuspects:[Suspect], _ Nedibles:[Edible]) {
        name = Nname
        allergies = Nallergies
        suspects = Nsuspects
        edibles = Nedibles
    }
    
    
    
//    func editName(_ Nname:String) {
//        name = Nname
//    }
//
//    // allergies control
//    func addAllergy(_ Nname:String, _ NengName:String, _ Nlevel:Int, _ Ndescription:String) {
//        allergies.append(Allergy(Nname, NengName, Nlevel, Ndescription))
//        sortAllergy()
//    }
//
//    func deleteAllergy(_ Dname:String) -> Bool {
//        for i in 0...allergies.count{
//            if allergies[i].name == Dname {
//                allergies.remove(at: i)
//                return true
//            }
//        }
//        return false
//    }
//
//    func sortAllergy() {
//        allergies.sort{
//            $0.level > $1.level
//        }
//    }
//
//    // suspects control
//    func addSuspect(_ Nname:String, _ Ndescription:String) {
//        suspects.append(Suspect(Nname, Ndescription))
//    }
//
//    func deleteSuspect(_ Dname:String) -> Bool {
//        for i in 0...suspects.count{
//            if suspects[i].name == Dname {
//                suspects.remove(at: i)
//                return true
//            }
//        }
//        return false
//    }
//
//    // edibles control
//    func addEdible(_ Nname:String, _ Ndescription:String) {
//        edibles.append(Edible(Nname, Ndescription))
//    }
//
//    func deleteEdible(_ Dname:String) -> Bool {
//        for i in 0...edibles.count{
//            if edibles[i].name == Dname {
//                edibles.remove(at: i)
//                return true
//            }
//        }
//        return false
//    }
}
