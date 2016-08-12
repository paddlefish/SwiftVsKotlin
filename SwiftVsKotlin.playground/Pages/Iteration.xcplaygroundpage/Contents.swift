import Cocoa
import XCPlayground

func IterationExample() {
	for character in "mouse".characters {
		print("\t\(character)")
	}

	let aMap = [
		"hello": "world",
		"dlrow": "olleh"
	]
	for (key, value) in aMap {
		print("\t\(key) to \(value)")
	}
}

IterationExample()




//: [Previous    ](@previous)
//: [Next](@next)


XCPlaygroundPage.currentPage.liveView = RunKotlin.run("Iteration.kt")

SlideTitle.sharedInstance.setTitle("First Rate Iteration")
SlideTitle.sharedInstance.setSubTitle("")

