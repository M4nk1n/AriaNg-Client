//
//  ViewController.swift
//  AriaNG for mac
//
//  Created by Vinken Chan on 1/3/2018.
//  Copyright © 2018年 Vinken Chan. All rights reserved.
//

import Cocoa
import WebKit

class ViewControllerForMac: NSViewController {
  
  @IBOutlet weak var theWebView: WKWebView!

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let path = Bundle.main.path(forResource: "index", ofType: ".html", inDirectory: "aria-ng-0.4.0")
    let url = URL(fileURLWithPath: path!)
    let request = URLRequest(url: url)
    
    //加载页面
    self.theWebView.load(request)
    self.view.addSubview(self.theWebView)
    // Do any additional setup after loading the view.
  }
  
  override var representedObject: Any? {
    didSet {
      // Update the view, if already loaded.
    }
  }
  
  
}


