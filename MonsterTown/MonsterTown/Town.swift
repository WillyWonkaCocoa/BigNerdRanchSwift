//
//  Town.swift
//  MonsterTown
//
//  Created by Will Gao on 4/6/23.
//

import Foundation

// empty and memberwise (a parameter for each stored property on the instance) initilizers are synthsized by swift compiler
struct Town {
    // type property, shared by all instances of this type, require default value as they do not have initializers
    // subclass cannot override a type property and need to the class keyword
    static let world = "Earth"
    let region: String
    var mayor = Mayor()
    var population: Int {
        // property observer, oldValue is the default parameter name, here we use oldPopulation
        didSet(oldPopulation){
            if population < oldPopulation {
                print("The population has changed to \(population) from \(oldPopulation)")
                mayor.changeAnxietyLevel(by: 1)
                mayor.printCondolences()
            }
        }
    }
    var numberOfStoplights: Int
    
    init(region: String, population: Int, stoplights: Int) {
        self.region = region
        self.population = population
        numberOfStoplights = stoplights
    }
    
    init(population: Int, stoplights: Int) { // initializer delegation
        self.init(region: "N/A", population: population, stoplights: stoplights)
    }
    
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
        print("Population: \(population); number of stoplights: \(numberOfStoplights); region: \(region)")
    }
    
    // must add mutating keyword if an instance method changes any properties
    // mutating keyword asks compiler to make implicit self arg inout
    mutating func changePopulation(by amount: Int) {
        population += amount
        population = (population >= 0) ? population : 0
    }
}
