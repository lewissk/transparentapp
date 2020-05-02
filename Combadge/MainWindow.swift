//
//  MainWindow.swift
//  Combadge
//
//  Created by Scott Lewis on 5/2/20.
//  Copyright © 2020 Exemine. All rights reserved.
//

import Cocoa

class MainWindow: NSWindow {
    
    override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
        super.init(contentRect: contentRect, styleMask: style, backing: backingStoreType, defer: false)
        self.backingType = NSWindow.BackingStoreType.buffered
        self.alphaValue = 1.0
        self.backgroundColor = NSColor.clear
        self.isOpaque = false
    }
}
