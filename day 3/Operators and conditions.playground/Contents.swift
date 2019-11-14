//MARK:- Arithmetic Operators

let number1 = 10
let number2 = 20

let product = number1 * number2
let difference = number2 - number1
let divison = number2/number1
let remainder = 111 % number1


//MARK:- Operator Overloading

let str1 = "Hello"
let str2 = "Swift"
let complete = str1 + str2

let arr1 = ["Hello", "Swift"]
let arr2 = ["mozzam", "tahir"]
let completeArray = arr1 + arr2

//MARK:- Compound Assignment operators

var hello = "hello"
hello += "swift" //you can not apply -= operator on strings

//MARK:- Comparison Operator

let num1 = 10
let num2 = 20

num1 > num2
num1 == num2
num1 != num2

//MARK:- Conditions

if num2 + num1 == number2 {
    print("True")
} else {
    print("False")
}

//MARK:- Combining Conditions

if num2 > num1 && number2 > number1 {
    print("True")
} else if number1 > num1 || number2 > num2 {
    print("true")
} else {
    print("False")
}

//MARK:- Ternary Operator
//it works with three values at once

print(num2 > num1 ? "Number is greater" : "number is smaller")

//MARK:- Switch Statement
var weather = "Sunny"

switch weather {
case "rainy":
    print("Bring umbrella")
case "Sunny":
    print("Wear Sunglasses")
    fallthrough //to continue execution on next block
default:
    "Stay at home"
}

//MARK:- Range Operator

let score = 85

switch score {
case 80..<90:
    print("You did great")
case 70..<80:
    print("you are awesome")
default:
    print("try harder")
}
