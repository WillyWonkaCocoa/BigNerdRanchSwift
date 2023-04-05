import Cocoa

let volunteerCounts = [1,3,40,32,2,53,77,13]

// named function syntax
//func isAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j
//}

//closure expression syntax
//{(parameteres)-> return type in
//    //code
//}


//let volunteersSorted = volunteerCounts.sorted(by: isAscending)
// trailing closure syntax
let volunteersSorted = volunteerCounts.sorted{ $0 < $1 }
print(volunteersSorted)

func format(numbers: [Double], using formatter: (Double) -> String = {"\($0)"}) -> [String] {
    var result = [String]()
    for number in numbers {
        let transformed = formatter(number)
        result.append(transformed)
    }
    return result
}

let rounder: (Double) -> String = {
    (num: Double) -> String in
    return "\(Int(num.rounded()))"
}

let volunteerAverages = [10.75, 4.2, 1.5, 12.12, 16.815]
let roundedAveragesAsStrings = format(numbers: volunteerAverages, using: rounder)
let exactAveragesAsStrings = format(numbers: volunteerAverages)
