//
//  Zombie.swift
//  MonsterTown
//
//  Created by Will Gao on 4/6/23.
//

import Foundation

class Zombie: Monster {
    var walksWithLimp = true
    
    func regenerate() {
        walksWithLimp = false
    }
    
    override func terrorizeTown() {
        town?.changePopulation(by: -10) //optional chaining, as unwrapping an optional creates a copy
        super.terrorizeTown()
        regenerate()
    }
}
