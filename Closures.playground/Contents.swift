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


