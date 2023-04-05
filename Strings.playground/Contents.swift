import Cocoa

let playground = "Hello, playground"
var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"

let quote = #"I wanted to \"say\":\n(playground)"#
print(quote)

for c: Character in mutablePlayground {
    print("'\(c)")
}

let snowman = "\u{2603}"
let aAcute = "\u{0061}\u{0301}"
for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

let aAcutePrecomposed = "\u{00E1}"
let b = (aAcute == aAcutePrecomposed)

aAcute.count
aAcutePrecomposed.count

let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]
let range = ...end
let firstFive = playground[range]

let empty: String = ""
let startIndex = empty.startIndex
let endIndex = empty.endIndex
if startIndex == endIndex { print("string is empty!") }

let tale = """
    It was the best of times,
    it was the worst of times.
    """
print(tale)
