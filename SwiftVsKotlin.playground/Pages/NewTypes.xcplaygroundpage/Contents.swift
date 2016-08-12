import Cocoa
import XCPlayground

enum EnumType: Int {
	case first
	case second
	case third
	
	var dynamicProperty: String {
		if case .first = self {
			return "first"
		}
		return "\(rawValue) is not first"
	}
	
	func enumsHaveFuncs() -> Bool {
		return true
	}
}

struct StructType {
	let a: Int
	var b: String
}

//: [Previous    ](@previous)
//: [Next](@next)


XCPlaygroundPage.currentPage.liveView = RunKotlin.run("NewTypes.kt")

SlideTitle.sharedInstance.setTitle("New Types")
SlideTitle.sharedInstance.setSubTitle("")

