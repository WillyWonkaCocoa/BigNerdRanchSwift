import Cocoa

// enum names begin with a capital letter by convention
// for multiple words capitalize the first letter of each word
// must contain at least one case statement
enum TextAlignment: Int{
    // raw value as int, default starts at 0. Useful for storing/transmit enum to system that is not aware of enum Type
    case left = 20
    case right = 30
    case center = 40
    case justify = 50
}

var alignment = TextAlignment.left
alignment = .right

//if alignment == .right {
//    print("We should right-align the text!")
//}

switch alignment {
    // if all enums are listed, compiler won't throw error for not having default exhaustive case
case .left:
    print("left aligned")
case .right:
    print("right aligned")
case .center:
    print("center aligned")
case .justify:
    print("justified")
}

TextAlignment.left.rawValue
TextAlignment.right.rawValue
TextAlignment.center.rawValue
TextAlignment.justify.rawValue
alignment.rawValue

// Create a raw value
let myRawValue = 80

// Try to convert the raw value into a TextAlignment
if let myAlignment = TextAlignment(rawValue: myRawValue) {
    // Converstion succeeded!
    print("successfully created \(myAlignment) from \(myRawValue)")
} else {
    // Conversion failed
    print("\(myRawValue) has no corresponding TextAlignment case")
}

// Swift allows String, Character, and instances of any numeric type to be raw values
enum ProgrammingLanguage: String {
    // compiler automatically uses name of a case as itrs string raw value, so no need to assign if it matches the case name
    case swift      //= "swift"
    case objectiveC = "objective-c"
    case c         // = "c"
    case cpp        = "c++"
    case java      // = "java"
}

let myFavoriteLanguage = ProgrammingLanguage.swift
print("My favorite programming language is \(myFavoriteLanguage.rawValue)")
