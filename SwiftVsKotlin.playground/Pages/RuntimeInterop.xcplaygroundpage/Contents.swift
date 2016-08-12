import Cocoa
import XCPlayground

func RuntimeInterop() -> [AnyObject] {
	let nsobj = NSObject()
	let anyobj = nsobj as AnyObject
	let nsnumber = NSNumber(double: 12.2)
	let twelve = nsnumber as Double
	let nsstr = NSString(string: "hi")
	let str = nsstr as String
	let dict: [String:AnyObject] = ["Hello": 12]
	let nsdict = dict as NSDictionary
	let arr: [Int] = [1,2,3,5]
	let nsarr = arr as NSArray

	let data = str.uppercaseString as CFString
	let ptr = unsafeBitCast(data, UnsafePointer<Void>.self)
	
	return [anyobj,twelve,str,nsdict, nsarr]
}

/*:
## Notes
+ System APIs transparently return native types for existing APIs...
+ Delegate/Overridden methods mistakenly mark parameters NULLable (kotlin)
+ CoreFoundation, CoreGraphics require use of UnsafePointer (Swift)
+ Old open source projects may not be "swift" friendly
   + (rapidly changing)
+ AnyObject is not really NSObject.
+ CocoaTouch delegate methods have weird names.
   + (Gets better in each OS release)
+ Kotlin has at least 4 kinds of linear sequence types.
+ In Swift mutability is a part of the language; Kotlin inconsistent.
*/

//: [Previous    ](@previous)
//: [Next](@next)


XCPlaygroundPage.currentPage.liveView = RunKotlin.run("RuntimeInterop.kt")

SlideTitle.sharedInstance.setTitle("Interchangeable Types")
SlideTitle.sharedInstance.setSubTitle("Both systems allow interoperability with previous runtime/VM")

