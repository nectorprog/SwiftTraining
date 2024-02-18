import Cocoa

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()


let sayHello = {
    print("Say hello!")
}

sayHello()

let sayHello2 = {(name: String) -> String in
    "Hi \(name)!"
}

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let payment = { (user: String) -> Bool in
    print("Paying \(user)…")
    return true
}
