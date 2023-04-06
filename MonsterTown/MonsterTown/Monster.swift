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
    var town: Town?
    var name = "Monster"
    
    
    func terrorizeTown() {
        if town != nil {
            print("\(name) is terrorrizing a town!")
        } else {
            print("\(name) hasn't found a town to terrorize  yet...")
        }
    }
}