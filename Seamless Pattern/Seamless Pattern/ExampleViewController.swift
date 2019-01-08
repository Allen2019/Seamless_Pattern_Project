//
//  ExampleViewController.swift
//  Seamless Pattern
//
//  Created by allen01px2019 on 2019/1/8.
//  Copyright © 2019 Allen. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController {

    @IBOutlet weak var exampleView: DrawView!
    var exampleLines: [[Int]]!
    var lines: [Line] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        for array in exampleLines
        {
            lines.append(Line.init(start: CGPoint(x:array[0],y:array[1]), end: CGPoint(x:array[2],y:array[3])))
        }
        
        exampleView.setLines(lines)
        exampleView.setNeedsDisplay()
        
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
