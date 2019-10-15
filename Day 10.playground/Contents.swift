import UIKit

class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}
let charlie = Dog(name: "Charlie Murphy", breed: "Mutt")
charlie.makeNoise()

final class Mutt: Dog {
    init(name: String) {
        super.init(name: name, breed: "Mutt")
    }
    
    override func makeNoise() {
        print("Yip!")
    }
}
let charles = Mutt(name: "Charles")


//class Singer {
//    var name = "Taylor Swift"
//}
struct Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name)
print(singerCopy.name)

class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}
for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

class SingerTwo {
    var name = "Taylor Swift"
}

let taylor = SingerTwo()
taylor.name = "Ed Sheeran"
print(taylor.name)
