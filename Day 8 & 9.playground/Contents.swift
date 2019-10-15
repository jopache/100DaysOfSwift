
import UIKit

struct Plant {
    var name: String
    var isPerennial: Bool
    
    var perennialStatus: String {
        if isPerennial {
            return "\(name) is a Perennial"
        } else {
            return "\(name) is not a Perennial"
        }
    }
}

var corn = Plant(name: "Corn", isPerennial: true)
print(corn.name)

corn.name = "Sweet Corn"

print(corn.perennialStatus)


struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "loading", amount: 0)
progress.amount = 20
progress.amount = 100

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}
let louisville = City(population: 750 * 1000)
louisville.collectTaxes()

struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()


let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)

struct User {
     var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
var user = User()


struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}
struct PersonTwo {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = PersonTwo(name: "Ed")
print(ed.familyTree)


struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
print(Student.classSize)
