//
//  AppDelegate.swift
//  SlideFrame
//
//  Created by Andrew Rahn on 8/9/16.
//  Copyright © 2016 Iconfactory North. All rights reserved.
//

import Cocoa

//@convention(c)
func callback(center: CFNotificationCenter!, _: UnsafeMutablePointer<Void>, name: CFString!, object: UnsafePointer<Void>, userInfo: CFDictionary!) {
	print(object)
}

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet weak var window: NSWindow!
	@IBOutlet var title: NSTextField!
	@IBOutlet var subtitle: NSTextField!
	
	func applicationDidFinishLaunching(aNotification: NSNotification) {
		// Insert code here to initialize your application
		
		if let screen = NSScreen.mainScreen() {
			window.level = Int(CGWindowLevelForKey(CGWindowLevelKey.ScreenSaverWindowLevelKey))
			window.setFrame(screen.frame, display: true)
		}
		
		window.ignoresMouseEvents = true
		
		let center = NSNotificationCenter.defaultCenter()
		center.addObserver(self, selector: #selector(applicationDidChangeScreenParameters), name: NSApplicationDidChangeScreenParametersNotification, object: self)
		
		let distCenter = CFNotificationCenterGetDistributedCenter()

		CFNotificationCenterAddObserver(distCenter, nil,  { (_, observer, name, ptr, _) in
			let title = unsafeBitCast(ptr, CFString.self)
			if let delegate = NSApp.delegate as? AppDelegate {
				delegate.setSlideTitle(title as String)
			}
        }, "SlideFrame.Title", nil, CFNotificationSuspensionBehavior.DeliverImmediately)

		CFNotificationCenterAddObserver(distCenter, nil,  { (_, observer, name, ptr, _) in
			let title = unsafeBitCast(ptr, CFString.self)
			if let delegate = NSApp.delegate as? AppDelegate {
				delegate.setSlideSubTitle(title as String)
			}
        }, "SlideFrame.SubTitle", nil, CFNotificationSuspensionBehavior.DeliverImmediately)
	}
	
	func applicationDidChangeScreenParameters(notification: NSNotification) {
		if let screen = NSScreen.mainScreen() {
			window.level = Int(CGWindowLevelForKey(CGWindowLevelKey.ScreenSaverWindowLevelKey))
			window.setFrame(screen.frame, display: true)
		}
	}

	func applicationWillTerminate(aNotification: NSNotification) {
		// Insert code here to tear down your application
	}

	func setSlideTitle(withString: String) {
		title?.stringValue = withString
	}

	func setSlideSubTitle(withString: String) {
		subtitle?.stringValue = withString
	}
}

