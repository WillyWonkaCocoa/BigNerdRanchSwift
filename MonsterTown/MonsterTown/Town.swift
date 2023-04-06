//
//  Town.swift
//  MonsterTown
//
//  Created by Will Gao on 4/6/23.
//

import Foundation

struct Town {
    let region = "Middle"
    var population = 5_422
    var numberOfStoplights = 4
    
    enum Size {
        case small
        case medium
        case large
    }
    
    // lazy loading: value cannot be assigned immediately, costly in terms of memory/time, depends on unknown ext factors
    // value is calculated the first time it's accessed & never recalculated
    // prevents unsafe reference to uninitialized self
    lazy var townSize: Size = {
        switch population {
        case 0...10_000:
            return Size.small
        case 10_0001...100_000:
            return Size.medium
        default:
            return Size.large
        }
    }() //if parentheses were omitted, the closure would be assigned to townSize instead of the result of the closure
    
    // instance method, called on a specific instance of Town
    func printDescription() {
        print("Population: \(population); number of stoplights: \(numberOfStoplights)")
    }
    
    // must add mutating keyword if an instance method changes any properties
    // mutating keyword asks compiler to make implicit self arg inout
    mutating func changePopulation(by amount: Int) {
        population += amount
        population = (population >= 0) ? population : 0
    }
}
