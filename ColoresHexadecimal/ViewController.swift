//
//  ViewController.swift
//  ColoresHexadecimal
//
//  Created by Berganza on 25/11/15.
//  Copyright © 2015 Berganza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color = colorWithHexString("#FF9933")
        view.backgroundColor = color
    }
    
    func colorWithHexString (hexString:String) -> UIColor {
        
        var rgb: UInt32 = 0
        let s: NSScanner = NSScanner(string: hexString as String)
        s.scanLocation = 1
        s.scanHexInt(&rgb)
        
        return UIColor(
            red:   CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue:  CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}

