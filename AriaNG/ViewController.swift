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

  @IBOutlet weak var container: UIView!

  // 状态栏主题
  override var preferredStatusBarStyle: UIStatusBarStyle {
    return .lightContent
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    // 修改status bar背景色
    self.setStatusBarBackgroundColor(color: UIColor(red: 60 / 255, green: 72 / 255, blue: 82 / 255, alpha: 1))

    let theWebView = WKWebView(frame: .zero)
    theWebView.uiDelegate = self
    theWebView.scrollView.bounces = false     //禁用页面在最顶端时下拉拖动效果
    container.addSubview(theWebView)

    // 不自动转换为constrains，设置成false后下面的约束才能生效
    theWebView.translatesAutoresizingMaskIntoConstraints = false

    // 设置界面约束
    Utils.setConstraint(subView: theWebView, superView: container)

    // 加载页面内容
    Utils.loadContent(webView: theWebView)
  }

  /// 设置 status bar 背景色
  func setStatusBarBackgroundColor(color : UIColor) {
    let statusBarWindow : UIView = UIApplication.shared.value(forKey: "statusBarWindow") as! UIView
    let statusBar : UIView = statusBarWindow.value(forKey: "statusBar") as! UIView
    if statusBar.responds(to:#selector(setter: UIView.backgroundColor)) {
      statusBar.backgroundColor = color
    }
  }

}

