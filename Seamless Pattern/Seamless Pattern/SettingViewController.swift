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

    @IBAction func purpleButton(_ sender: Any) {
        dVC.delegate?.color = UIColor(red: 154, green: 120, blue: 169, alpha: 1.0) as! CGColor
    }
    @IBAction func blueButton(_ sender: Any) {
        dVC.delegate?.color = UIColor(red: 122, green: 194, blue: 195, alpha: 1.0) as! CGColor
    }
    @IBAction func greenButton(_ sender: Any) {
        dVC.delegate?.color = UIColor(red: 181, green: 194, blue: 59, alpha: 1.0) as! CGColor
    }
    @IBAction func yellowButton(_ sender: Any) {
        dVC.delegate?.color = UIColor(red: 238, green: 201, blue: 65, alpha: 1.0) as! CGColor
    }
    @IBAction func redButton(_ sender: Any) {
        dVC.delegate?.color = UIColor(red: 231, green: 107, blue: 102, alpha: 1.0) as! CGColor
    }
    
}

