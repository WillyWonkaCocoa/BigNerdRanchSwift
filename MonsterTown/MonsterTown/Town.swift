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
