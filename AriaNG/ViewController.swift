//
//  ViewController.swift
//  AriaNG
//
//  Created by Vinken Chan on 1/3/2018.
//  Copyright © 2018年 Vinken Chan. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

  var theWebView: WKWebView?

  override func viewDidLoad() {
    super.viewDidLoad()

    initWebView()
    loadWebView()

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func initWebView() {
    if #available(iOS 11.0, *) {
      self.theWebView = WKWebView(frame: self.view.safeAreaLayoutGuide.layoutFrame)
    } else {
      self.theWebView = WKWebView(frame: .zero)
    }

    self.theWebView?.uiDelegate = self

    //禁用页面在最顶端时下拉拖动效果
    self.theWebView?.scrollView.bounces = false

    self.view.addSubview(self.theWebView!)
  }

  func loadWebView() {
    //加载页面
    let path = Bundle.main.path(forResource: "index", ofType: ".html", inDirectory: "aria-ng")
    let url = URL(fileURLWithPath: path!)
    let request = URLRequest(url: url)
    self.theWebView?.load(request)
  }

}

