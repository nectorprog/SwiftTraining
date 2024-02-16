import Cocoa

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

print(platforms[1...])

for os in platforms {
    print("Это \(os)")
}

for i in 1...2 {
    print(i)
}

for i in 1...9 {
    for j in 1...9 {
        print("\(i) * \(j) = \(i * j)")
    }
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

// while
var a = 10

while a > 0 {
    print(a)
    a -= 1
}

let id = Int.random(in: 1...1000)

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
            }
        }
    }
}


// как выйти из цикла, если нашли
outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}

let num1 = 5
let num2 = 2

var multiplies: [Int] = []

for i in 2...100 {
    if i.isMultiple(of: 5) && i.isMultiple(of: 2) {
        multiplies.append(i)
    }
}

print(multiplies)
