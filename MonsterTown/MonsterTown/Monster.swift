//
//  Monster.swift
//  MonsterTown
//
//  Created by Will Gao on 4/6/23.
//

import Foundation

// inheritance is unique to classes, structures and enumerations do not have this feature
// use final keyword on, class or methods, to prevent overriding
class Monster {
    // static properties cannot be overriden by a subclass, very definitive
    static let isTerrifying = true
    class var spookyNoise: String {
        return "Grrr"
    }
    var town: Town?
    var name: String
    var victimPool: Int {
        get {
            return town?.population ?? 0
        }
        set(newVictimPool){
            town?.population = newVictimPool
        }
    }
    
    required init(town: Town? = nil, monsterName: String) { // required keyword means subclasses must override or inherit this initializer
        self.town = town
        name = monsterName
    }
    
    // type methods, work with type level info (call other type methods and type properties) but not with any instance properties.
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorrizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize  yet...")
        }
    }
}
