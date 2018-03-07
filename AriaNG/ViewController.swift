//
//  ViewController.swift
//  AriaNG
//
//  Created by Vinken Chan on 1/3/2018.
//  Copyright © 2018年 Vinken Chan. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

  @IBOutlet weak var theWebView: WKWebView!

  override func viewDidLoad() {
    super.viewDidLoad()

    let path = Bundle.main.path(forResource: "index", ofType: ".html", inDirectory: "aria-ng")
    let url = URL(fileURLWithPath: path!)
    let request = URLRequest(url: url)

    //禁用页面在最顶端时下拉拖动效果
    theWebView.scrollView.bounces = false

    //加载页面
    theWebView.load(request)
    self.view.addSubview(theWebView)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

