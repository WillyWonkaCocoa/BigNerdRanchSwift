//
//  main.swift
//  MonsterTown
//
//  Created by Will Gao on 4/5/23.
//

import Foundation

var myTown = Town()
myTown.changePopulation(by: 500)

let fredTheZombie: Monster = Zombie()
fredTheZombie.town = myTown
fredTheZombie.terrorizeTown()
fredTheZombie.town?.printDescription()
(fredTheZombie as? Zombie)?.walksWithLimp = true //downcasting, which is unsafe! can force cast as! or conditional cast as?
// upcasting is always safe, can check type with is keyword: is fredTheZombie is Zombie
