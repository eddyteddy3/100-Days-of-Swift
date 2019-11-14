//MARK: Handling nil data

var age: Int? //optional
//by default it contains nothing and swift can safely read this and not let the app crash
print(age ?? nil)
age = 22
print(age ?? nil)


//MARK: Unwrapping the optionals

//if we need to look what is inside some optional var then we need to unwrap it
//there are various ways but here is one of them

var name: String?

name = "Moazzam"

if let name = name { //unwrapping the optional
    print("Name has \(name.count) has letters")
} else {
    print("Missing letters...")
}

//MARK: Guard let

//instead of if let, Gaurd let is also used
//you can return from any func or loop using guard

func printName(name: String?) {
    guard let name = name else {
        print("Please enter the name!")
        return
    }
    
    print("hello \(name)")
}

printName(name: "Moazam")
printName(name: nil)

//MARK: Force Unwrapping

//the force unwrapping can lead to crashing often times

let str: String? = "5"
let number = Int(str!) //but what if there is "five" instead of five

//MARK: Implicity unwrapped optionals
 
//this can also lead to crash but they can be on choice

let num: Int! = 5 //it is already unwrapped so you dont have to unwrap it again

//MARK: Nil Coalescing

//we provide default value if we get nil value when unwrapped

func getName(id: Int) -> String? {
    if id == 1 {
        return "taylor swift"
    } else {
        return nil
    }
}

getName(id: 2) ?? "Anonymous"

//MARK: Optional Chaining

let singers = ["taylor", "justin", "mark", "Eden"]
let beatles = singers.first?.uppercased() //this is optional chaining

//MARK: Failable Initializer

//remember converting an integer from string
//what if there is "five" instead of 5,
//here is the solution

struct Users {
    var name: String
    var id: Int
    
    init?(name: String, id: Int) { //in case if name has not 5 letter it will return nil
        if name.count == 5 {
            self.name = name
            self.id = id
        } else {
            return nil
        }
    }
}
