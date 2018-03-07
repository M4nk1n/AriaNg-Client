//
//  AppDelegate.swift
//  AriaNG for mac
//
//  Created by Vinken Chan on 1/3/2018.
//  Copyright © 2018年 Vinken Chan. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

  var mainWindowController: MainWindowController? = nil

  func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
    if flag {
      mainWindowController?.window?.orderFront(self)
    } else {
      mainWindowController?.window?.makeKeyAndOrderFront(self)
    }
    return true
  }

  func applicationDidFinishLaunching(_ aNotification: Notification) {
    // Insert code here to initialize your application
  }

  func applicationWillTerminate(_ aNotification: Notification) {
    // Insert code here to tear down your application
  }

//  func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
//    return true;
//  }

}

