//
//  Functions.swift
//  Seamless Pattern
//
//  Created by allen01px2019 on 2019/1/6.
//  Copyright © 2019 Allen. All rights reserved.
//

import Foundation
import UIKit

//source of this func: stackoverflow.com/questions/4334233/how-to-capture-uiview-to-uiimage-without-loss-of-quality-on-retina-display

func viewToImage(with view: UIView) -> UIImage? {
    UIGraphicsBeginImageContextWithOptions(view.bounds.size, view.isOpaque, 0.0)
    defer { UIGraphicsEndImageContext() }
    if let context = UIGraphicsGetCurrentContext() {
        view.layer.render(in: context)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        return image
    }
    return nil
}
