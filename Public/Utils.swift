//
//  Utils.swift
//  AriaNG
//
//  Created by Vinken Chan on 8/3/2018.
//  Copyright © 2018年 Vinken Chan. All rights reserved.
//

import Foundation
import WebKit

class Utils: NSObject {

  static func loadContent(webView: WKWebView) {
    //加载页面
    let path = Bundle.main.path(forResource: "index", ofType: ".html", inDirectory: "aria-ng")
    let url = URL(fileURLWithPath: path!)
    let request = URLRequest(url: url)
    webView.load(request)
  }

  static func setConstraint(subView item: Any, superView toItem: Any) {

    let topConstraint = NSLayoutConstraint(
      item: item,
      attribute: .top,
      relatedBy: .equal,
      toItem: toItem,
      attribute: .top,
      multiplier:1,
      constant:0
    )
    let bottomConstraint = NSLayoutConstraint(
      item: item,
      attribute: .bottom,
      relatedBy: .equal,
      toItem: toItem,
      attribute: .bottom,
      multiplier:1,
      constant:0
    )
    let leftConstraint = NSLayoutConstraint(
      item: item,
      attribute: .left,
      relatedBy: .equal,
      toItem: toItem,
      attribute: .left,
      multiplier:1,
      constant:0
    )
    let rightConstraint = NSLayoutConstraint(
      item: item,
      attribute: .right,
      relatedBy: .equal,
      toItem: toItem,
      attribute: .right,
      multiplier:1,
      constant:0
    )
    NSLayoutConstraint.activate([topConstraint, bottomConstraint, leftConstraint, rightConstraint])

  }

}
