//
//  Event.swift
//  StsTestTask
//
//  Created by Artem Chursin on 01.11.2019.
//  Copyright © 2019 Artem Chursin. All rights reserved.
//

import Foundation

class Event {
    
    var startTime: Date?
    var endTime: Date?
    var name: String!
    
    init(startTime: String?, endTime: String?, name: String) {
        
        self.name = name
        
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        if let time = startTime {
            self.startTime = formatter.date(from: time)
        }
        if let time = endTime {
            self.endTime = formatter.date(from: time)
        }
    }
}
