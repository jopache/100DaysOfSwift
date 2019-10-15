let drivingParameterless = {
    print("I'm driving in my car")
}
drivingParameterless()

let driving = { (place: String) in
    print("I'm going to \(place)")
}
driving("cdub")

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place)"
}
let message = drivingWithReturn("lagrange")
print(message)

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived")
}
travel(action: drivingParameterless)

travel {
    print("I'm driving")
}

func travelTwo(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("Lagrange")
    print("I arrived!")
}
travelTwo { (place: String) in
    print("I'm going to \(place)")
}

func travelThree(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("Louisville")
    print(description)
    print("I arrived!")
}
// See how each invocation gets simpler
travelThree { (place: String) -> String in
    return "I'm going to \(place)"
}
travelThree { place -> String in
    return "I'm going to \(place) in my car"
}
travelThree { place in
    return "I'm going to \(place) in my car"
}
travelThree { place in
    "I'm going to \(place) in my car"
}
travelThree {
    "I'm going to \($0) in my car"
}

func travelFour(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("Middletown", 60)
    print(description)
    print("I arrived!")
}
travelFour {
    "I'm going to \($0) at \($1) miles per hour."
}

func travelFive() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
let result = travelFive()
result("middletown")
result("london")
result("paris")
