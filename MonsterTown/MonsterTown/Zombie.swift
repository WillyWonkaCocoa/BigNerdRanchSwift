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
    var walksWithLimp: Bool
    private(set) var isFallingApart:Bool // internal getter and private setter; setter cannot be more visible than getter, possible values: public, internal, private. Default visibility is internal
    
    init?(limp: Bool, fallingApart: Bool, town: Town?, monsterName: String) {
        walksWithLimp = limp
        isFallingApart = fallingApart
        super.init(town: town, monsterName: monsterName)
    }
    
    // convenience initializer: will always call another convenience or designated initializer
    convenience init?(limp: Bool, fallingApart: Bool) {
        self.init(limp: limp, fallingApart: fallingApart, town: nil, monsterName: "Fred")
        if walksWithLimp {
            print("This zombie has a bad knee.")
        }
    }
    
    convenience required init?(town: Town?, monsterName: String) {
        self.init(limp: false, fallingApart: false, town: town, monsterName: monsterName)
    }
    
    deinit {
        print("Zombie \(name) is no longer with us.")
    }
    
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
