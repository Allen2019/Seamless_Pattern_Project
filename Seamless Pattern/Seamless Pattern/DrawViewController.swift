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
        drawView.clearLines()
        drawView.setNeedsDisplay()
    }
    
    //reference: stackoverflow.com/questions/4334233/how-to-capture-uiview-to-uiimage-without-loss-of-quality-on-retina-display
    
    @IBAction func exportButton(_ sender: Any) {
        guard let image = viewToImage(with: drawView) else {
            return
        }
        let activity = UIActivityViewController(activityItems: [image],
                                                applicationActivities: nil)
        present(activity, animated: true)
    }
}
