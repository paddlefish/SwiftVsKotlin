import Foundation

let str = "Hello"
let age = 42
let tuple: (String, Int) = (str, age)
let twople: (str: String, age: Int)
		= (str: str, age: age)
let threeple = (str, age, tuple)

/*:
Kotlin only has Pair
````
val x = 42
val y = "hello"
val pair = x to y
````
*/


//: [Previous    ](@previous)
//: [Next](@next)

SlideTitle.sharedInstance.setTitle("Tuples and Pair")
SlideTitle.sharedInstance.setSubTitle("Swift has better ad-hoc, typed structures")

