import Cocoa
import XCPlayground

class NullableClassExample {
	let x: String
	let y: Int?

	init() {
		x = "hello"
		y = 12
	}

	func f() -> Int  {
		// self.x is never null
		// y might be null
		if let y = y {
			// now we know local
			// y is not null
			return 42 + y
		}
		return 0
	}
}

//: [Previous    ](@previous)
//: [Next](@next)


XCPlaygroundPage.currentPage.liveView = RunKotlin.run("Nullable.kt")

SlideTitle.sharedInstance.setTitle("Nullable")
SlideTitle.sharedInstance.setSubTitle("It used to be that anything might be null.  Not anymore.")

