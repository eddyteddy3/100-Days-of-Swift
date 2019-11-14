//MARK:- Basic Function
func printHelpInfo() {
    let message = """
    Welcome to my app
    Run this app inside any module
    """
    print(message)
}

printHelpInfo()

//MARK:- Functions with parameters
func square(number: Int) { //number is parameter
    print(number * number)
}

square(number: 2)

//MARK:- Functions with returning values
func returnSquare(number: Int) -> Int {
    return number * number
}

returnSquare(number: 3)

let number = returnSquare(number: 3) //grabing the value in variable
print(number)

//MARK:- Parameter Labels
func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "moazzam")

//MARK:- Ommitting (remvoving) Parameter labels
func sayHelloTo(_ name: String) {
    sayHello(to: name)
}

sayHelloTo("Moazzam")

//MARK:- Default Parameters
func printNames(_ name: String, nicely: Bool = true) { //by default we are assigning the "nicely" (true)
    if nicely {
        print("Hello, \(name)")
    } else {
        print("Oh, it \(name) again")
    }
}

printNames("Eddy")
printNames("Teddy", nicely: false)

//MARK:- Variadic Functions

//variadic functions accepts the series of parameters of one type
func squareNumber(number: Int...) {
    for num in number {
        print("Number \(num)'s square is \(num * num)")
    }
}

//calling the variadic function
squareNumber(number: 1)
squareNumber(number: 1,2,3)

//MARK:- Throw Functions

//first enum needs to be define to describe the erros first
enum ErrorHandlng: Error {
    case obvious
}

func checkPassword(password: String) throws -> Bool {
    if password == "password" {
        throw ErrorHandlng.obvious
    }
    
    return true
}

//running the Throw Function

do {
    try checkPassword(password: "password")
} catch let err {
    print(err)
}


import NaturalLanguage
let text = "Hello this is my word graph"
let tok = NLTokenizer(unit: .word)
tok.string = text

tok.enumerateTokens(in: text.startIndex..<text.endIndex) { range,_  in
    print(text[range])
    return true
}

