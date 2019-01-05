//
//  FirstViewController.swift
//  Seamless Pattern
//
//  Created by allen01px2019 on 2019/1/5.
//  Copyright © 2019 Allen. All rights reserved.
//

import UIKit

var dVC = DrawViewController() //Will later be pointed to the created DrawViewControler when it's loaded, so that other objects can access it

class DrawViewController: UIViewController {

    @IBOutlet weak var drawView: DrawView!
    
    var d: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dVC = self // setting the global dVC variable to itself, so that other objects can access it
        d = drawView.frame.width
    }

    @IBAction func clearButton(_ sender: Any) {
        drawView.lines = []
        drawView.setNeedsDisplay()
    }
    
}

