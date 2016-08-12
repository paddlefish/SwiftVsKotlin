//
//  HoleView.swift
//  SlideFrame
//
//  Created by Andrew Rahn on 8/9/16.
//  Copyright © 2016 Iconfactory North. All rights reserved.
//

import Cocoa

class HoleView: NSView {

	override func drawRect(dirtyRect: NSRect) {
		NSRectFillUsingOperation(dirtyRect, .CompositeClear)
	}

}