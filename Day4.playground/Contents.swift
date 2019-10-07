import UIKit

let count = 1...20

for number in count {
    print("Number is \(number)")
}

let array = [1,2,3]

for _ in array {
    print("play")
}


var number = 1

while number <= 20 {
    print(number)
    number += 1
}

number = 1

repeat {
    print(number)
    number += 1
} while number <= 20

while false { print("this is false") }
repeat { print("this is false") } while false

var countdown = 10
while countdown >= 0 {
    print(countdown)
    
    if countdown == 4 {
        print("I'm bored. lets go")
        break
    }
    countdown -= 1
}

for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerloop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerloop
        }
    }
}

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}
var counter = 0
while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}
