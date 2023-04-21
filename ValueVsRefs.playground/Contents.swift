import Cocoa

var str = "Hello, playground"
var playgroundGreeting = str
playgroundGreeting += "! How are you today"
str

class Employee {
    var id: Int = 0
}
let anika = Employee()
let theBoss = anika

anika.id = 16
anika.id
theBoss.id

struct Company {
    var boss: Employee
}
let acme = Company(boss: anika)
let mel = Employee()
//acme.boss = mel

// value types that are declared as constants cannot have their properties changed, even if the properties were declared with var
mel.id = 86 // can change value of a property on a constants that is an instance of a reference type, can't change the instance
mel.id

// be careful using reference types inside value types
acme.boss.id
let widgetCo = acme
anika.id = 15
widgetCo.boss.id

// to avoid confusion, should generally avoid using reference type properties inside value types

// if you need to use a reference type property inside the struct, best to use immutable instance

// Swift does offer language level support for deep copy, which means copies in Swift are shallow

// if you want deep copy, will have to make your own

let juampa = Employee()

let employees = [anika, mel, juampa]
let partyGoers = employees
employees.last?.id = 4
employees
partyGoers

acme.boss === anika // identity operator
let joe = Employee()
let sam = Employee()
joe === sam

// two constants or variables can have the same value yet not be identical (point to different instances of a type). 
