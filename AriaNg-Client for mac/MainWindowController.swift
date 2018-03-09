//
//  ViewController.swift
//  AriaNG for mac
//
//  Created by Vinken Chan on 1/3/2018.
//  Copyright © 2018年 Vinken Chan. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

  override func windowDidLoad() {
    super.windowDidLoad()
    // ...initialisation...
    // Register the controller in the app delegate
    let appDelegate = NSApp.delegate as! AppDelegate
    appDelegate.mainWindowController = self
  }

}

