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
    
    var delegate: drawViewProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dVC = self // setting the global dVC variable to itself, so that other objects can access it
        d = drawView.frame.width
        
        delegate = drawView 
    }

    @IBAction func clearButton(_ sender: Any) {
        drawView.lines = []
        drawView.setNeedsDisplay()
    }
    
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
    
    @IBAction func exportButton(_ sender: Any) {
        guard let image = viewToImage(with: drawView) else {
            return
        }
        let activity = UIActivityViewController(activityItems: [image],
                                                applicationActivities: nil)
        present(activity, animated: true)
    }
}
