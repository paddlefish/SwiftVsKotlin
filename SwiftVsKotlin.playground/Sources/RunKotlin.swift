import Foundation
import Cocoa

@objc
public class RunKotlin: NSViewController {
	private var code: String? = nil
	
	public static func run(code: String) -> NSViewController {
		let result = RunKotlin(nibName: nil, bundle: nil)!
		result.code = code
		result.loadView()
		return result
	}
	
	public override func loadView() {
		self.view = NSView(frame: NSRect(x: 0, y: 0, width: 200, height: 40))
		let button = NSButton(frame: NSRect(x: 0, y: 0, width: 200, height: 40))
		button.title = "Kotlin"
		button.target = self
		button.action = #selector(runKotlin)
		self.view.addSubview(button)
	}
	
	@objc public func runKotlin(sender: AnyObject) {
		guard let code = code else { return }
		let myAppleScript = "tell application \"Finder\" to open \":Macintosh HD:Users:arahn:dev:KotlinVsSwiftTemp:app:src:main:kotlin:com:iconfactory:kotlinvsswifttemp:\(code)\""
		print(myAppleScript)
		var error: NSDictionary?
		if let scriptObject = NSAppleScript(source: myAppleScript) {
			if let output: NSAppleEventDescriptor = scriptObject.executeAndReturnError(
																			   &error) {
				print(output.stringValue)
			} else if (error != nil) {
				print("error: \(error)")
			}
		}
	}
}