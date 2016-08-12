import Cocoa
import XCPlayground

class foobar<T: NSView> {
	func buzz(it: T) -> [T] {
		return [it]
	}
}

func clearAutoConstraint<T: NSView>(views: [T]) {
	views.forEach {
		$0.translatesAutoresizingMaskIntoConstraints = false
	}
}

extension SequenceType where Generator.Element == Int {
    var sum: Int {
        return reduce(0) { $0 + $1 }
    }
}

[1,2,3,4,5].sum








protocol foo {
	func someFunc()
}

extension foo {
	mutating func someOther() {
// Must include mutating declaration even if
// this protocol is only used on classes.
//
//		{ [weak self] (x:Int) -> Void in
// Error: weak cannot be applied to protocol
//		}
	}
}

//protocol bar<T> {
// Error: Protocols don't support generics
//}



/*:
## Protocols and Generics: Uneasy Truce
+ Cannot use weak in places you need to
+ Generic types and protocols are not always extensible in the combinations you need
+ Sometimes resort to runtime checks or `as!`
+ Still have subclassing. Too many extension points?
*/









//: [Previous    ](@previous)
//: [Next](@next)

XCPlaygroundPage.currentPage.liveView = RunKotlin.run("Extension.kt")

SlideTitle.sharedInstance.setTitle("Extensions")
SlideTitle.sharedInstance.setSubTitle("Lots of options")

