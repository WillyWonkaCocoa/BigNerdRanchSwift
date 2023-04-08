//
//  Zombie.swift
//  MonsterTown
//
//  Created by Will Gao on 4/6/23.
//

import Foundation

class Zombie: Monster {
    // shorthand getter syntax. If not providing a setter, the get block can be omitted
    override class var spookyNoise: String{
        return "Brains..."
    }
    var walksWithLimp = true
    private(set) var isFallingApart = false // internal getter and private setter; setter cannot be more visible than getter, possible values: public, internal, private. Default visibility is internal
    
    func regenerate() {
        walksWithLimp = false
    }
    
    override func terrorizeTown() {
        if !isFallingApart{
            town?.changePopulation(by: -10) //optional chaining, as unwrapping an optional creates a copy
        }
        super.terrorizeTown()
        regenerate()
    }
}
