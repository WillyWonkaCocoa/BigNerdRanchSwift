//
//  Vampire.swift
//  MonsterTown
//
//  Created by Will Gao on 4/6/23.
//

import Foundation

class Vampire: Monster {
    var thralls = [Vampire]()
    
    override func terrorizeTown() {
        super.terrorizeTown()
        if let population = town?.population {
            if population > 1{
                town?.changePopulation(by: -1) //optional chaining, as unwrapping an optional creates a copy
                thralls.append(Vampire(town: self.town, monsterName: self.name))
            }
        }
    }
    
    func printThralls(){
        print("The Vampire now has \(thralls.count) thralls!")
    }
}

