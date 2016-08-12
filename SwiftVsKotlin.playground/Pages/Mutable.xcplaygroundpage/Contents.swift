import Cocoa
import XCPlayground

func MutableExample() -> String {
	var varStr = "Mac"
	varStr += " and Cheese"

	let letStr = "Mac"
	// letStr += " and Cheese" // ERR
	
	return letStr
}










//: [Previous    ](@previous)
//: [Next](@next)




XCPlaygroundPage.currentPage.liveView = RunKotlin.run("Mutable.kt")

SlideTitle.sharedInstance.setTitle("Mutability...")
SlideTitle.sharedInstance.setSubTitle("")

