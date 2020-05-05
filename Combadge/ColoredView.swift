//
//  ColoredView.swift
//  Combadge
//
//  Created by Scott Lewis on 5/4/20.
//  Copyright © 2020 Exemine. All rights reserved.
//

import Cocoa

class ColoredView: NSView {
    
    @IBInspectable var color: NSColor = .windowBackgroundColor

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        color.setFill()
        dirtyRect.fill()
    }
    
}
