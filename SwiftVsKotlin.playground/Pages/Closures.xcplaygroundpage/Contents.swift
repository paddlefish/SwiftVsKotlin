import Cocoa
import XCPlayground

typealias MyClosure = (x: Int, y: String)->Int

func Closure() -> [MyClosure] {
	
	let x = { (x: Int, y: String) in

		return 42 + x + y.characters.count
	}
	
	return [
		x,
		{ $0 + $1.characters.count }
	]
}
Closure().forEach { print("\t\($0(x: 42, y: "Hello"))") }




/*:
## Notes
+ Swift permits omitting return if simple
+ Kotlin does not permit return
   + Must be a single expression
   + Kotlin expressions can be longer
   + For example if {} else {} is one
+ Swift: trailing closure syntax
+ Kotlin: omit() if only one argument
*/




//: [Previous    ](@previous)
//: [Next](@next)


XCPlaygroundPage.currentPage.liveView = RunKotlin.run("Closures.kt")

SlideTitle.sharedInstance.setTitle("Closures")
SlideTitle.sharedInstance.setSubTitle("Also known as Blocks")

