//
//  PreviewViewController.swift
//  Seamless Pattern
//
//  Created by allen01px2019 on 2019/1/6.
//  Copyright © 2019 Allen. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {
    
    @IBOutlet weak var one: UIImageView!
    @IBOutlet weak var two: UIImageView!
    @IBOutlet weak var three: UIImageView!
    @IBOutlet weak var four: UIImageView!
    @IBOutlet weak var five: UIImageView!
    @IBOutlet weak var six: UIImageView!
    @IBOutlet weak var seven: UIImageView!
    @IBOutlet weak var eight: UIImageView!
    @IBOutlet weak var nine: UIImageView!
    
    func draw () {
        guard let image = viewToImage(with: dVC.drawView) else {return}
        one.image = image
        two.image = image
        three.image = image
        four.image = image
        five.image = image
        six.image = image
        seven.image = image
        eight.image = image
        nine.image = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        draw()
    }
    @IBAction func updateButton(_ sender: Any) {
        draw()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
