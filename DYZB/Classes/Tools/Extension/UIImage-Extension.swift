//
//  UIImage-Extension.swift
//  DYZB
//
//  Created by xIang on 2020/12/11.
//

import UIKit
extension UIImage {
    static func imageWithOriginalName(imageName: String) -> UIImage{
        return UIImage(named: imageName)!.withRenderingMode(RenderingMode.alwaysOriginal)
    }
}
