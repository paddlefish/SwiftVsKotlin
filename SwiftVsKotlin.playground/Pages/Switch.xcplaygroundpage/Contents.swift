import Cocoa
import XCPlayground

enum MyEnum {
	case apple(isMacintosh: Bool)
	case banana
	case pear
}
func SwitchExample(value: MyEnum) -> Int {
	let result: Int
	switch value {
	case .apple(let isMacintosh):
		if isMacintosh { result = 42 }
		else { fallthrough }
	case .banana:
		result = 12
	default:
		result = 1
	}
	return result
}
SwitchExample(.pear)
SwitchExample(.apple(isMacintosh: false))
SwitchExample(.apple(isMacintosh: true))

/*:
+ Swift
   + Must be exhaustive.
   + No auto fallthrough.
+ Kotlin
   + Not exhaustive
   + No auto fallthrough.
*/









//: [Previous    ](@previous)
//: [Next](@next)

XCPlaygroundPage.currentPage.liveView = RunKotlin.run("When.kt")

SlideTitle.sharedInstance.setTitle("Switch / When")
SlideTitle.sharedInstance.setSubTitle("")

