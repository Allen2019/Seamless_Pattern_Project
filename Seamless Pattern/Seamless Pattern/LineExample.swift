//
//  LineExample.swift
//  Seamless Pattern
//
//  Created by allen01px2019 on 2019/1/8.
//  Copyright © 2019 Allen. All rights reserved.
//

import UIKit

//Referenced summer course material by Van Simmons


struct LineExample : Encodable, Decodable {
   
    private enum CodingKeys : String, CodingKey {
        case title = "title"
        case contents = "contents"
    }
    var title : String?
    var contents: [[Int]]?
    
}

