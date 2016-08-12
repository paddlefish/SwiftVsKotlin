import Cocoa
import XCPlayground

func MutableExample2() -> [String:String] {
	var version: Double = 2.0
	version += 1
	
	let langName: String = "Swift"
	let dict = [
		"immutable": "good",
		langName: "immutable",
		"∴ \(langName)": "good"
	]
	// dictionary += "nope" // COMPILE ERR
	
	return dict
}





//: [Previous    ](@previous)
//: [Next](@next)


XCPlaygroundPage.currentPage.liveView = RunKotlin.run("MutableCont.kt")

SlideTitle.sharedInstance.setTitle("Mutability (cont)")
SlideTitle.sharedInstance.setSubTitle("")

