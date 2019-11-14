//MARK: Classes

//difference between classes and structs is that
//classes must have its own initializers
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func bark() {
        print("Woof!")
    }
}

var shephered = Dog(name: "eddy", breed: "German")
shephered.name
//MARK: Inheritance

class Poddle: Dog {
    init(name: String) {
        super.init(name: name, breed: "poddle")
        print("Poddle Dog \(self.name)")
    }
}

var poddle = Poddle(name: "tddy")

//MARK: Override Methods

shephered.bark()

class Shephered: Dog {
    override func bark() {
        print("WOOOOF!")
    }
}

var sheph = Shephered(name: "Shep", breed: "Shephered")
sheph.bark()

//MARK: Final Classes
final class Russian: Dog {
    override func bark() {
        print("yip!")
    }
}

//we can not inherit any other class from Russiam

//MARK: Copying Objects

//when we copy objects which are instances of classes, they point to the different memory pointers in memory.

class Singer {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}


var singer1 = Singer(name: "Taylor Swift")
print(singer1.name)

//copying the object
var singer2 = singer1
singer2.name = "Justing Bieber" //same object but have different reference
print(singer2.name)

//MARK: Deinitializers

class Person {
    var name: String
    
    init() {
        name = "Moazzam"
        print("my name is \(name)")
    }
    
    deinit {
        print("\(name) is no more")
    }
}

for _ in 1...3 {
    var person = Person()
}

//when the object gets used it gets destroyed

