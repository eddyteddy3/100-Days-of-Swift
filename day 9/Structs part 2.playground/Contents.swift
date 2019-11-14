//MARK: Init()
struct Person {
    var username: String
    
    init() { //by default Anonymouss will be asssigned
        username = "Anonymous"
    }
}

var user = Person()
print(user.username)
user.username = "Moazzam"
print(user.username)

//MARK: Referring to current instance "Self"

struct User {
    var name: String
    
    init(name: String) {
        print("\(name) is my name.")
        self.name = name //self helps distinguish between parameter and struct property
    }
}

var user1 = User(name: "Moazzam")
user1.name = "Eddy"
print(user1.name)

//MARK: Lazy Properties
//lazy properties are the one which get loads in memory whenever it gets called. It is for memory optimization
struct FamilyTree {
    init() {
        print("creating Family tree!")
    }
}

struct Users {
    var name: String
    lazy var familyTree = FamilyTree() //this will only gets load in memory when it will be called
    
    init(name: String) {
        self.name = name
    }
}

var user2 = Users(name: "Tahir")
print(user2.name)
user2.familyTree //the print only worked when it gets called
//if you remove the lazy keyword from familyTree variable then it will get called without calling.

//MARK: Static Property and Methods

//the static property will be shared across all the instances of struct

struct Student {
    static var rollNo = 0
    var name: String
    
    init(name: String) {
        self.name = name
        Student.rollNo += 1 //the number will increment evertime the instance is created
    }
}

var student1 = Student(name: "Eddy")
var student2 = Student(name: "Teddy")

print(Student.rollNo) //because there are two instances of student

//MARK: Access Control

struct Persons {
    var name: String
    private var id: Int
    
    init(name: String, id: Int) {
        self.id = id
        self.name = name
    }
    
    func showId() {
        print("The social id number is: \(id)")
    }
}

var person1 = Persons(name: "Stark", id: 1)
var person2 = Persons(name: "Tom", id: 2)

//try to print id of person1
//it wont let you because it is restricted only to the scope of struct.
//we can access it via method.
person1.showId()
