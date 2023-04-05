import Cocoa

var movieRatings = ["Tron": 4, "WarGames": 5, "Sneakers": 4]
movieRatings.count

let tronRating = movieRatings["Tron"]
movieRatings["Sneakers"] = 5
movieRatings
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Tron")
if let lastRating = oldRating, let currentRating = movieRatings["Tron"] {
    print("old rating: \(lastRating)")
    print("current rating: \(currentRating)")
}

movieRatings["Hackers"] = 5
movieRatings.removeValue(forKey: "Sneakers")

let NWSL = ["Kraken": ["Jane", "Michaela" , "Rachel", "Allysha", "Emily"],
            "Seahawks": ["Janine", "Sydney" , "Toni", "Shelina", "Chioma"],
            "Storm": ["McKenzie", "Thaisa" , "Shea", "Jen", "Kailen"]]

var NWSL_players: [String] = []

for players in NWSL.values {
    NWSL_players += players
}

print("The NWSL has the following players: \(NWSL_players)")

var team_and_rosters = ""

for team_name in NWSL.keys{
    var team = "\(team_name) members: \n"
    team += NWSL[team_name]?.joined(separator: "\n") ?? ""
    team += "\n\n"
    team_and_rosters += team
}

print(team_and_rosters)

//var groceryList = Set<String>(["Apples", "Oranges"])
var groceryList: Set = ["Apples", "Oranges"]
groceryList.insert("Kiwi")
groceryList.insert("Pears")

let friendsGroceryList = Set(["Bananas", "Cereal", "Milk", "Oranges"])

let sharedList = groceryList.union(friendsGroceryList)

let myCities: Set = ["Atlanta", "Chicago", "Jacksonville", "New York", "Denver"]
let yourCities: Set = ["Chicago", "Denver", "Jacksonville"]

// whether myCitites contains all the cities contained by yourCities
if myCities.isSuperset(of:yourCities){
    print("myCities contains all of the cities contained by yourCities.")
}
    
// union
groceryList.formUnion(_:friendsGroceryList)

// intersection
groceryList.formIntersection(friendsGroceryList)

groceryList
