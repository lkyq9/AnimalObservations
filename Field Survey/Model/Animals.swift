//
//  Animals.swift
//  Field Survey
//
//  Created by Lydia Krasucki on 11/3/17.
//  Copyright © 2017 Lydia Krasucki. All rights reserved.
//

import UIKit

enum Animals: String{
    
    case mammal
    case plant
    case reptile
    case amphibian
    case bird
    case fish
    case insect
    
    var image: UIImage?{
        return UIImage(named: self.rawValue + "icon")
    }
}
