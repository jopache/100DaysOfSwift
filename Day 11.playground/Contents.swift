import UIKit

protocol Identifiable {
    var id: String { get set }
    func identify()
}
extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}


struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}
let user = User(id: "123")
displayID(thing: user)





protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }


extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()

let people = ["Larry", "John", "Gustavo", "Ben"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

people.summarize()
beatles.summarize()


let ben = User(id: "ben")
ben.identify()



