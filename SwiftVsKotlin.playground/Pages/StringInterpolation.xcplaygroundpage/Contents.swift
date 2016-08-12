import Cocoa
import XCPlayground

func StringInterpolation() -> String {
	let a = 3, b = 5
	
	return "\(a) times \(b) is \(a * b)"
}

print("\t" + StringInterpolation())




//: [Previous    ](@previous)
//: [Next](@next)








XCPlaygroundPage.currentPage.liveView = RunKotlin.run("StringInterpolation.kt")

SlideTitle.sharedInstance.setTitle("String interpolation")
SlideTitle.sharedInstance.setSubTitle("")

