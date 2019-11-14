//MARK:- For Loops

let numbers = 1...10

for number in numbers {
    print("Number: \(number)")
}

let names = ["taylor", "swift", "moazzam"]

for name in names {
    print("Name: \(name)")
}

//we don't use extra var everytime
print("Players gonna")

for _ in numbers {
    print("Play")
}

//MARK:- While Loop

var incrementalNumber = 1

while incrementalNumber <= 10 {
    print("number incremented")
    incrementalNumber += 1
}

//MARK:- Repeat Loop

//it runs the code inside the loop at least once and then it will check the condition

repeat {
    incrementalNumber += 1
    print("Repeat loop")
} while incrementalNumber < 10

//MARK:- Exit Loop

//the loop can be breaked anytime during the repeatetion through specific condition

var countDown = 10

while countDown <= 10 {
    
    if countDown == 7 {
        print("Lifting off now!")
        break
    }
    countDown -= 1
}

//MARK:- Skip the values in loops

for number in 1...10 {
    if number % 2 == 0 {
        continue
    }
    
    print(number)
}
