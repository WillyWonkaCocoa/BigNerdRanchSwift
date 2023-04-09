//
//  Mayor.swift
//  MonsterTown
//
//  Created by Will Gao on 4/8/23.
//

import Foundation

struct Mayor {
    var anxietyLevel: Int = 0
    
    func printCondolences(){
        print("I'm deeply saddened to hear about this latest tragedy. I promise that my office is looking into the nature of this rash of violence.")
    }
    
    // must add mutating keyword if an instance method changes any properties
    // mutating keyword asks compiler to make implicit self arg inout
    mutating func changeAnxietyLevel(by amount: Int) {
        anxietyLevel += amount
    }
}
