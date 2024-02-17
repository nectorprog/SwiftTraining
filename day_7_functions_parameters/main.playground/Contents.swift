import Cocoa

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

let num = 39

if num.isMultiple(of: 3) {
    print("YES")
} else {
    print("NO")
}


let roll = Int.random(in: 1...5)
print(roll)

func printTimesTables(number: Int, val: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, val: 5) // valid
// printTimesTables(val: 5, number: 5) // invalid

func rollDice() -> Int {
    return Int.random(in: 1...5)
}

print(rollDice())

func areLettersIdentical(string1: String, string2: String) -> Bool {
    return string1 == string2
}


print(areLettersIdentical(string1: "abc", string2: "abc"))

func getUsers() -> [String] {
    ["Varlamov1", "Varlamov2"]
}

print(getUsers())

func returnSet() -> Set<String> {
    return Set(["apple", "banana", "orange"])
}

// Использование:
let mySet = returnSet()
print(mySet) // вывод: ["banana", "apple", "orange"] - порядок элементов может меняться

func returnTuple() -> (String, Int) {
    return ("apple", 5)
}

// Использование:
let myTuple = returnTuple()
print(myTuple) // вывод: ("apple", 5)


func getUser() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let user = getUser()
print("Name: \(user["firstName", default: "Anonymous"]) \(user["lastName", default: "Anonymous"])")

func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()

    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }

    // Send back all the rolls
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)
