//
//  BackgroundView.swift
//  SlideFrame
//
//  Created by Andrew Rahn on 8/9/16.
//  Copyright © 2016 Iconfactory North. All rights reserved.
//

import Cocoa

class BackgroundView: NSView {
	@IBInspectable var backgroundColor: NSColor?
	
	override func drawRect(dirtyRect: NSRect) {
		let color = backgroundColor ?? .whiteColor()
		color.set()
		NSRectFillUsingOperation(dirtyRect, .CompositeSourceOver)
//		NSRectFill(dirtyRect)
	}

}