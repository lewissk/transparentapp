//
//  ReceiverCollectionViewItem.swift
//  Combadge
//
//  Created by Scott Lewis on 5/1/20.
//  Copyright © 2020 Exemine. All rights reserved.
//

import Cocoa

class ReceiverCollectionViewItem: NSCollectionViewItem {
    
    @IBOutlet weak var receiverLabel: NSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        super.viewDidLoad()
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.lightGray.cgColor
    }
    
}
