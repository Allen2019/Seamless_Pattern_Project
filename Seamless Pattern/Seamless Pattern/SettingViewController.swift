//
//  SecondViewController.swift
//  Seamless Pattern
//
//  Created by allen01px2019 on 2019/1/5.
//  Copyright © 2019 Allen. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: Colors
    @IBAction func purpleButton(_ sender: Any) {
        dVC.drawView.setColor (UIColor(red: 154/255.0, green: 120/255.0, blue: 169/255.0, alpha: 1.0).cgColor)
    }
    @IBAction func blueButton(_ sender: Any) {
        dVC.drawView.setColor (UIColor(red: 122/255.0, green: 194/255.0, blue: 195/255.0, alpha: 1.0).cgColor)
    }
    @IBAction func greenButton(_ sender: Any) {
        dVC.drawView.setColor (UIColor(red: 181/255.0, green: 194/255.0, blue: 59/255.0, alpha: 1.0).cgColor)
    }
    @IBAction func yellowButton(_ sender: Any) {
        dVC.drawView.setColor (UIColor(red: 238/255.0, green: 201/255.0, blue: 65/255.0, alpha: 1.0).cgColor)
    }
    @IBAction func redButton(_ sender: Any) {
        dVC.drawView.setColor (UIColor(red: 231/255.0, green: 107/255.0, blue: 102/255.0, alpha: 1.0).cgColor)
    }
    
    //MARK: Brush Width
    func homeMadeTruncate(_ float: Float) -> Double{
        return Double(Int(float*100))/100
    }
    
    @IBOutlet weak var widthLabel: UILabel!
    @IBAction func widthSlider(_ sender: UISlider) {
        dVC.drawView?.setLineWidth(CGFloat(homeMadeTruncate(sender.value)))
        widthLabel.text = "\(homeMadeTruncate(sender.value))"
    }
}

