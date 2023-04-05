import Cocoa

func printGreeting() {
    print("Hello, playground.")
}

printGreeting()

func printPersonalGreeting(to name: String) {
    print("Hello, \(name). Welcome to your playground.")
}

printPersonalGreeting(to: "Step")

func divisionDescriptionFor(numerator: Double,
                             denominator: Double,
                             withPunctuation punctuation: String = ".") -> String {
    return "\(numerator) divided by \(denominator) is \(numerator / denominator)\(punctuation)"
}

print(divisionDescriptionFor(numerator: 9.0, denominator: 3.0))

print(divisionDescriptionFor(numerator: 9.0, denominator: 3.0, withPunctuation: "!"))


func areaOfTriangleWith(base: Double, height: Double) -> Double {
    let rectangle = base * height
    func divide() -> Double {
        return rectangle / 2
    }
    return divide()
}

print(areaOfTriangleWith(base: 3.0, height: 5.0))

func sortedEvenOddNumbers(_ numbers: [Int]) -> (evens: [Int], odds: [Int]){
    var evens = [Int]()
    var odds = [Int]()
    for number in numbers {
        if number % 2 == 0 {
            evens.append(number)
        } else {
            odds.append(number)
        }
    }
    return (evens, odds)
}

let aBunchOfNumbers = [10, 1, 4,3,57,43,84,27,156,111]
let theSortedNumbers = sortedEvenOddNumbers(aBunchOfNumbers)
print("The even numbers are: \(theSortedNumbers.evens); the odd numbers are: \(theSortedNumbers.odds)")

func grabMiddleName(fromFullName name: (String, String?, String)) -> String? {
    return name.1
}

let middleName = grabMiddleName(fromFullName: ("Alice", "nil", "Ward"))
if let theName = middleName {
    print(theName)
}

func greetByMiddleName(fromFullName name: (first: String,
                                           middle: String?,
                                           last: String)) {
    guard let middleName = name.middle else {
        print("Hey there!")
        return
    }
    
    guard middleName.count <= 10 else {
        let middleInitial = middleName.first
        print("Hey, \(name.first) \(middleInitial!). \(name.last) ")
        return
    }
    print("Hey, \(middleName)")
}
greetByMiddleName(fromFullName: ("Alice","Richardsddasdfds","Ward"))

func siftBeans(fromGroceryList list: [String]) -> (beans: [String], otherGroceries: [String]){
    var beans = [String]()
    var otherGroceires = [String]()
    for item in list{
        if item.hasSuffix("beans"){
            beans.append(item)
        }else{
            otherGroceires.append(item)
        }
    }
    
    return (beans, otherGroceires)
}

let result = siftBeans(fromGroceryList: ["green beans",
                                            "milk",
                                            "black beans",
                                            "pinto beans",
                                            "apples"])
   
result.beans == ["green beans", "black beans", "pinto beans"] // true
result.otherGroceries == ["milk", "apples"] // true

func printGreeing() -> Void {
    print("Hello")
}

// variadic parameters: takes zero or more input values for its argument
// a function can only have one variadic parameter, and it cannot be marked inout
// typically the final parameter on the list


