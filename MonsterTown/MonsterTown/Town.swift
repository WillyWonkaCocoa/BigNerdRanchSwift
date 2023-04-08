//
//  Town.swift
//  MonsterTown
//
//  Created by Will Gao on 4/6/23.
//

import Foundation

struct Town {
    // type property, shared by all instances of this type, require default value as they do not have initializers
    // subclass cannot override a type property and need to the class keyword
    static let world = "Earth"
    let region = "Middle"
    var population = 5_422 {
        // property observer, oldValue is the default parameter name, here we use oldPopulation
        didSet(oldPopulation){
            print("The population has changed to \(population) from \(oldPopulation)")
        }
    }
    var numberOfStoplights = 4
    
    enum Size {
        case small
        case medium
        case large
    }
    
    // lazy loading: value cannot be assigned immediately, costly in terms of memory/time, depends on unknown ext factors
    // value is calculated the first time it's accessed & never recalculated
    // prevents unsafe reference to uninitialized self

    // read-only compute property
    var townSize: Size {
        switch population {
        case 0...10_000:
            return Size.small
        case 10_001...100_000:
            return Size.medium
        default:
            return Size.large
        }
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
