//MARK: Closures as parameters

func travel(action: (String) -> Void) {
    print("Let's go to")
    action("Germany")
    print("We will have fun there")
}

travel { (place: String) in
    print("\(place)")
}

//MARK: Closures returning parameters

func read(action: (String) -> String) {
    print("I am reading")
    let bookName = action("Elon Musk") //this dummy value
    print(bookName)
}

read { (bookname: String) -> String in
    return "SpaceX"
}

//MARK: Short hand parameters names

read { bookName in //we can remove the return type
    "Astrophsycis"
    //we can use $0 too
    
}

//MARK: Closures with multiple parameters

//things will gonna get bit tricker now

func coding(action: (String, String) -> String) {
    print("I am coding in language")
    let description = action("swift", "iOS")
    print(description)
}

//we will use $0 for parameter 1, and $1 for second parameter
coding {
    "I am coding in \($0) for \($1)"
}

//MARK: Returning closures from functions

func movie() -> (String) -> Void { //there is func which is returning closure which is returning nothing
    return {
        print("watching movie \($0)")
    }
}

let currentMovie = movie()
currentMovie("Avengers")
