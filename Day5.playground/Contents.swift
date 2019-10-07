
func printHelp() {
    let message = """
Welcome to MyApp!
"""
    print(message)
}
printHelp()

func square(number: Int) {
    print(number * number)
}

square(number: 8)

func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 8)
print(result)

func sayHello(to name: String) {
    print("hello, \(name)!")
}
sayHello(to: "Jose")

func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Jose")

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Jose")
greet("Jose", nicely: false)

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1, 2, 3, 4, 5)

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password!")
    print("password is good")
} catch {
    print("Error you cant use that password")
}

func doubleInPlace(number:  inout Int) {
    number *= 2
}
var myNumber = 10
doubleInPlace(number: &myNumber)
