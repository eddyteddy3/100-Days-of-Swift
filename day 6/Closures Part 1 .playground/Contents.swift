//MARK:- Basic Closure

//they are other kind of functions

let driving = {
    print("I am driving tesla")
}

driving() //calls like a normal functions

//MARK: Accepting Parameters in Closures

//to use the parameters, just declare them after {
let drivingCar = { (place: String) in
    print("We are goind to \(place)")
}

drivingCar("Germany")


//MARK: Returning Parameter from Closure
//just like func, Closure also use -> ReturnType to return parameters from closure
let places = { (place: String) -> String in
        return "We are heading to \(place)"
}

let place = places("Germany")
print(place)

//MARK: Closures as parameters

func travel(action: () -> Void) {
    print("We are ready to go!")
    action()
}

travel { //this is the trailing closure
    drivingCar("Germany")
}

