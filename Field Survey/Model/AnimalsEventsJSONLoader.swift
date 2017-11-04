//
//  AnimalsEventsJSONLoader.swift
//  Field Survey
//
//  Created by Lydia Krasucki on 11/3/17.
//  Copyright © 2017 Lydia Krasucki. All rights reserved.
//

import Foundation

class AnimalsEventsJSONLoader{
    
    class func load(filename: String) -> [animalsEvent]{
        var events = [animalsEvent]()
        
        if let path = Bundle.main.path(forResource: filename, ofType: "json"),
        
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
                events = animalsEventsJSONparser.parse(data)
        }
        return events
    }
    
}
