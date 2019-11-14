//MARK: Protocols

//we can not directly create instances from protocol butwe can struct or methods that can conform to that protocol

protocol identifiable {
    var id: String { get set }
}

struct User: identifiable {
    var id: String
    
}

func getId(thing: identifiable) {
    print("This is the id: \(thing.id)")
}


var user = User(id: "Hello")
getId(thing: user)

//MARK: Protocol Inheritance

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol Vacations {
    func takeTour(days: Int)
}

protocol Employee: Payable, Vacations, NeedsTraining {
    
}

//the employee protocol conforms to all of above protocols

//MARK: Extensions

//extensions are use to extend the functionality of the existing methods
extension Int {
    func square() -> Int {
        return self * self
    }
}

var num: Int = 2
num.square()

//extensions does not let add the stored property so we use Computed Property

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

var num2: Int = 3
num2.isEven
var num3: Int = 4
num3.isEven

//MARK: Extensions & Protocols

var singers = ["taylor", "swift", "justin", "beiber"]


extension Collection {
    func summarizee() {
        print("There are total \(count) singers")
        
        for name in self {
            print(name)
        }
    }
}

singers.summarizee()

//MARK: Protocol Oriented Programming

protocol Identifiable {
    var id: String {get set}
    
    func identify()
}

extension Identifiable { //extending the protocol
    func identify() {
        print("This is the ID: \(id)")
    }
}

struct Person: Identifiable {
    var id: String
}

var person1 = Person(id: "123")
person1.identify()
