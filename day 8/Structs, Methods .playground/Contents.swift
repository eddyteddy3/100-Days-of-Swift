//MARK: Structs

//simplest form of structure
struct Sport {
    var name: String //called property
}

var tenis = Sport(name: "Tenis")
tenis.name = "Football"


//MARK: Computed Properties

struct Sports {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String { // this is computed property
        if isOlympicSport {
            return "\(name) is olympic sport"
        } else {
            return "\(name) is not olympic sport"
        }
    }
}

let futsal = Sports(name: "Futsal", isOlympicSport: true)
futsal.olympicStatus

//MARK: Property Observers

struct Progress {
    var task: String
    var amount: Int {
        didSet { //property observer
            print("This task \(task) is \(amount) completed")
        }
    }
}

var downloading = Progress(task: "downloading", amount: 0)
downloading.amount = 50
downloading.amount = 80
downloading.amount = 100

//MARK: Methods

struct Population {
    var amount: Int
    
    func collectTaxes () -> Int { //method
        return amount * 8_000_00
    }
}

var population = Population(amount: 1_111_00)
population.collectTaxes()

//MARK: Mutating Methods

struct Person {
    var name: String
    mutating func makeAnon() {
        name = "Anonymous"
    }
    
}

var person = Person(name: "moazam")
person.makeAnon()
person.name

//MARK: Properties and methods of string

var arr = ["eddy"]
arr.append("teddy")
print(arr)
print(arr.distance(from: 0, to: 3))
