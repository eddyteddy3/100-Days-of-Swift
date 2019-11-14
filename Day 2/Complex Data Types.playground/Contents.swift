//MARK:- Arrays

let name1 = "moazzam"
let name2 = "tahir"
let name3 = "eddy"
let name4 = "teddy"

let nameArray = [name1, name2, name3, name4]
//to access the array, the index for particular data location is used.
nameArray[2]
//to use type annotation in Arrays
let arr: [String] = ["name1", name2, "okay"]

//MARK:- Sets
let set1 = Set([name1, name2, name2])

//MARK:- Tuples

let tuple1 = (first: "moazzam", last: "tahir") //fixed in size (constants)
tuple1.0 //way to access the tuple value
tuple1.last //another way to acccess the tuple value

//MARK:- Dictionaries

let dictionary1 = [
    "name": "moazam",
    "age": "21"
]

dictionary1["name"] //to access
//to provide the default value for the nil if value does not exist then
dictionary1["city", default: "Unknown"]

//MARK:- Create Empty Collections
//Arrays
var array = [Int]()


//sets
var set = Set<Int>()
var stringSet = Set<String>()

//dictionaries
var dictionary = Dictionary<String, Int>()
var hetrogeneousDictionary = Dictionary<String, Any>()
//another way to create the empty dictionary
var anotherDictionary = [String: Int]()

//MARK:- Enumerations

//to use the failure and success for same naming oonvention
enum Result {
    case failure
    case success
}

var success = true

if success {
    print(Result.success)
} else {
    Result.failure
}

//MARK:- Enum associated values

enum Activity {
    case bored
    case talking(topic: String)
    case singing(song: String)
    case running(speed: Int)
}

let runningAtSpeed = Activity.running(speed: 30)
print("Running at speed: \(runningAtSpeed)")
