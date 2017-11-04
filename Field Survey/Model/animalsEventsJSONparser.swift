//
//  animalsEventsJSONparser.swift
//  Field Survey
//
//  Created by Lydia Krasucki on 11/3/17.
//  Copyright © 2017 Lydia Krasucki. All rights reserved.
//

import Foundation

class animalsEventsJSONparser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [animalsEvent]{
        
        var AnimalsEvents = [animalsEvent]()
        
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok"{
               
                if let observations = root["observations"] as? [Any]{
                    for observation in observations{
                        if let observation = observation as? [String: String]{
                            
                            if let classificationName = observation ["classification"],
                                let title = observation["title"],
                                let description = observation["description"],
                                let dateString = observation["date"],
                                let date = dateFormatter.date(from: dateString)
                                {
                                    
                                    if let AnimalsEvent = animalsEvent(classificationName: classificationName, title: title, description: description, date: date){
                                        AnimalsEvents.append (AnimalsEvent)
                                    }
                                    
                                }
                            }
                        }
                    }
                }
        
        return AnimalsEvents
    }
}
