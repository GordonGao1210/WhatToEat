////
////  LocalData.swift
////  WhatToEat
////
////  Created by Shengyun Gao on 6/3/21.
////
//
//import Foundation
//
//
//
//var filename = "myData.json"
//
//var exist:Bool = false
//
//var peoples:[People] = load("myData.json")
//
//
//
//
//func load<T: Decodable>(_ filename: String) -> T {
//    
//    let data: Data
//
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//        else {
//            print("entered")
//            fatalError("Couldn't find \(filename) in main bundle.")
//    }
//    
//    exist = true
//
//    do {
//        data = try Data(contentsOf: file)
//    } catch {
//        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//    }
//
//    do {
//        let decoder = JSONDecoder()
//        return try decoder.decode(T.self, from: data)
//    } catch {
//        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//    }
//}
//
//
//func save(_ filename: String) {
//    let encoder = JSONEncoder()
//    let data: Data
//    
//    do {
//        data = try encoder.encode(peoples)
//    } catch {
//        fatalError("Couldn't encode peoples")
//    }
//    
//    let pathURL = URL(fileURLWithPath: filename)
//    do {
//        try data.write(to: pathURL)
//    } catch {
//        fatalError("Couldn't write into \(filename)")
//    }
//    
//}











//    func load<T: Decodable>() -> T {
//        let filename = "myData.json"
//
//        let data: Data
//
//        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//            else {
//                fatalError("Couldn't find \(filename) in main bundle.")
//        }
//
//        do {
//            data = try Data(contentsOf: file)
//        } catch {
//            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//        }
//
//        do {
//            let decoder = JSONDecoder()
//            return try decoder.decode(T.self, from: data)
//        } catch {
//            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//        }
//    }




//    func load() {
//        let filename = "myData.json"
//
//        let data: Data
//
//        guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//            else {
////                fatalError("Couldn't find \(filename) in main bundle.")
//                print("Couldn't find \(filename) in main bundle.")
//                return
//        }
//
//        do {
//            data = try Data(contentsOf: file)
//        } catch {
////            fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//            print("Couldn't load \(filename) from main bundle:\n\(error)")
//            return
//        }
//
//        do {
//            let decoder = JSONDecoder()
//            peoples = try decoder.decode([People].self, from: data)
//        } catch {
////            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//            print("Couldn't parse \(filename) as [People]:\n\(error)")
//            return
//        }
//    }
