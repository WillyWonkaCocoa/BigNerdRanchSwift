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

enum LightBulb {
    case on
    case off
    
    // a LightBulb method!
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150.0
        case .off:
            return ambient

        }
    }
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var bulb = LightBulb.on
let ambientTemperature = 77.0

// instance.methodName(arguments)
var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

enum ShapeDimensions {
    // point has no associated avlue - it is dimensionless
    case point
    
    // square's assoicated value is the length of one side
    case square(side: Double)
    
    // rectangle's associated value defines its width and height
    case rectangle(width: Double, height: Double)
    
    func area() -> Double {
        switch self {
        case .point:
            return 0
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        }
    }
}

var squareShape = ShapeDimensions.square(side: 10.0)
var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10.0)
var pointShape = ShapeDimensions.point

print("square's area = \(squareShape.area())")
print("rectangle's area = \(rectShape.area())")
print("point's area = \(pointShape.area())")
