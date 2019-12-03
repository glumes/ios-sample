//
//  ViewController.swift
//  mac-ffmpeg
//
//  Created by glumes on 2019/12/3.
//  Copyright © 2019 glumes. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var initBtn: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func initFFmpeg(_ sender: NSButton) {
        FFLog.log()
    }
}

