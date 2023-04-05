import Cocoa

var bucketList = ["Climb Mt. Everest"]

bucketList.append("Read War and Peace")
bucketList.append("Go on an Arctic expedition")
bucketList.append("Scuba dive in the Great Blue Hole")
bucketList.append("Find a triple rainbow")

bucketList.count

bucketList.remove(at: 1)
bucketList
print(bucketList[...2])

//bucketList[1] += " with friends"
bucketList[1]

var toDoList = ["Take out the trash", "Pay bills", "Cross off finished items"]

var reversedToDoList: [String] = []

for item in toDoList {
    reversedToDoList.insert(item, at: 0)
}
            
print(reversedToDoList)

toDoList.reverse()

let arcticExepditioIndex = bucketList.firstIndex(of: "Go on an Arctic expedition")

var index = arcticExepditioIndex ?? 0

let twoPositionsLater = bucketList[index+2]
