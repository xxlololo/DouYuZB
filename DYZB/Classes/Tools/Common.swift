//
//  Common.swift
//  DYZB
//
//  Created by xIang on 2020/12/17.
//

import UIKit

var isFullScreen: Bool {
    if #available(iOS 11, *) {
          guard let w = UIApplication.shared.delegate?.window, let unwrapedWindow = w else {
              return false
          }
          if unwrapedWindow.safeAreaInsets.left > 0 || unwrapedWindow.safeAreaInsets.bottom > 0 {
              print(unwrapedWindow.safeAreaInsets)
              return true
          }
    }
    return false
}

let kNavigationBarH: CGFloat = isFullScreen ? 88 : 64
let kBottomSafeHeight: CGFloat = isFullScreen ? 34 : 0
let kTabbarH:CGFloat = 44 + kBottomSafeHeight
let kScreenH: CGFloat = UIScreen.main.bounds.height
let kScreenW: CGFloat = UIScreen.main.bounds.width
