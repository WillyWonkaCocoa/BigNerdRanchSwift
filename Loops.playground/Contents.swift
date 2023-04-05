import Cocoa



for i in 1...100 {
//if else solution
    if i % 3 == 0 {
        print("FIZZ", terminator: " ")
    }
    if i % 5 == 0{
        print("BUZZ", terminator: "")
    }
    if i % 5 != 0 && i % 3 != 0 {
        print("\(i)", terminator: "")
    }
    print()

    // switch solution
    switch i {
    case let i where i%3 == 0 && i%5 == 0:
        print("FIZZ BUZZ")
    case let i where i%3 == 0:
        print("FIZZ")
    case let i where i%5 == 0:
        print("BUZZ")
    default:
        print("\(i)")
    }

}

