//
//  Notice.swift
//  StsTestTask
//
//  Created by Artem Chursin on 01.11.2019.
//  Copyright © 2019 Artem Chursin. All rights reserved.
//

import Foundation

struct Notice {
    
    var flightDate: Date?
    var gate: String?

    init(flightDate: String?, gate: String?) {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        
        if let date = flightDate {
            self.flightDate = formatter.date(from: date)
        }
        self.gate = gate
    }
}
