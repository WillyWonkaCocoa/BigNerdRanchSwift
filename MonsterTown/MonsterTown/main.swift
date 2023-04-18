//
//  main.swift
//  MonsterTown
//
//  Created by Will Gao on 4/5/23.
//

import Foundation

//var myTown = Town()
var myTown = Town(population: 10_000, stoplights: 6) // free memberwise initializer
myTown.printDescription()
//var yourTown = myTown // Now there are two towns! structs/enums store the instance's entire value & are called value types that follow value semantics
let myTownSize = myTown.townSize
print(myTownSize)
myTown.changePopulation(by: 1_000_000)
print("Size: \(myTown.townSize); population: \(myTown.population)")

var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred") // classes store a reference to another location in memory where the instance is stored
// the reference is copied and passed around: 64 bits (8 bytes) of memory regardless of the size of the actual instance
// classes are reference types and follow reference semantics
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()
//(fredTheZombie as? Zombie)?.walksWithLimp = true
//downcasting, which is unsafe! can force cast as! or conditional cast as?
// upcasting is always safe, can check type with is keyword: is fredTheZombie is Zombie

var convenientZombie = Zombie(limp: true, fallingApart: false)

let buffyTheVampire = Vampire(town: myTown, monsterName: "Buffy")
buffyTheVampire.town?.printDescription()
buffyTheVampire.terrorizeTown()
buffyTheVampire.town?.printDescription()
buffyTheVampire.printThralls()

buffyTheVampire.terrorizeTown()
buffyTheVampire.town?.printDescription()
buffyTheVampire.printThralls()

buffyTheVampire.terrorizeTown()
buffyTheVampire.town?.printDescription()
buffyTheVampire.printThralls()

print("Victim pool: \(String(describing: fredTheZombie?.victimPool))") // accepts optional chaining
fredTheZombie?.victimPool = 500
print("Victim pool: \(String(describing: fredTheZombie?.victimPool))")

print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}
fredTheZombie = nil

print("Mayor's anxiety level is \(myTown.mayor.anxietyLevel)")
