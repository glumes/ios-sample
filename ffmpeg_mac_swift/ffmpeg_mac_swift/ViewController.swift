//
//  ViewController.swift
//  ffmpeg_mac_swift
//
//  Created by glumes on 2019/11/28.
//  Copyright © 2019 glumes. All rights reserved.
//

import Cocoa


class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        self.view.backgroundColor = NSColor.yellow
 
        self.view.wantsLayer = true
        
        self.view.layer?.backgroundColor = NSColor.red.cgColor
        
        
//        var widget:NSButton = self.view.viewWithTag(1)
//
//        widget?.wantsLayer = true
//        widget?.layer?.backgroundColor = NSColor.blue.cgColor
        
        
//        self.view.setNeedsDisplay(NSRect(x:0,y:0,width:100,height:100))
        
//        let nsview = NSView()
//        nsview.frame = NSMakeRect(0,0, 100, 100)
//        nsview.wantsLayer = true
//        nsview.layer?.backgroundColor = NSColor.red.cgColor
//        self.view.addSubview(nsview)

        
    }
    
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func buttonClick(_ sender: NSButtonCell) {
    }

}

