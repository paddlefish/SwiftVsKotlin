import Cocoa
import XCPlayground

func myFun(closure: (Int, Double) -> (Void)) {
	closure(12, 12.3)
}
func TypeInference() -> [AnyObject] {
	let x:[String:Double] = ["Foo": 12.2]
	let y:[String:Float] = ["Foo": 12.2]
	// Swift infers whether the 12.2
	// is float or double!

	// let z:[String:Float] = ["Foo": Double(12.2)]
		// Compile error; Double is not Float

	myFun { (i, d) in
		print("\tCalled with \(i), \(d)")
	}

	return [y, x]
}
TypeInference()

/*:
## Gotchas
+ Long sequnce of closures or templated types
   + Entire sequence will be compile error
   + Annotate closure params
      + { (param: Type) -> ReturnType in ... }
	  + { param: Type -> ReturnType ... }
*/








//: [Previous    ](@previous)
//: [Next](@next)


XCPlaygroundPage.currentPage.liveView = RunKotlin.run("TypeInference.kt")

SlideTitle.sharedInstance.setTitle("Type Inference")
SlideTitle.sharedInstance.setSubTitle("Both infer types, removing redundant typing")

