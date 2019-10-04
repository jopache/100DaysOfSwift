import UIKit

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "waiter's gonna "
let action = fakers + "wait"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

var score = 95
score -= 5

var quote = "When in "
quote += "Rome"

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

"Taylor" <= "Swift"

let firstCard = 11
let secondCard = 10
print(firstCard == secondCard ? "match" : "no match")

if firstCard + secondCard == 2 {
    print("aces")
} else if firstCard + secondCard == 21 {
    print("blackjack")
} else {
    print("regular")
}

let cost = 219
switch cost {
case 0..<145:
    print("too good to be true")
case 145..<185:
    print("that's a good deal")
case 185..<220:
    print("perhaps that seems exensive")
    fallthrough
default:
    print("definitely expensive")
}
