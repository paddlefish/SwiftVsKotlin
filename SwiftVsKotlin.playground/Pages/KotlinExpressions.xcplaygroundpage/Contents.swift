/*:
## Almost everything is an expression.
````
if(false) { 22 }
else if(!true) { 32 }
else { 42 }
	// -> 42
````
+ This can mean that *newlines* are significant.
````
val x = 5  // -> x is 5
		+ 4 // This statement has no effect
val x = 5 +
4 // -> x is 9
````
*/

//: [Next](@next)



SlideTitle.sharedInstance.setTitle("Kotlin Expressions")
SlideTitle.sharedInstance.setSubTitle("Almost a really good idea")
