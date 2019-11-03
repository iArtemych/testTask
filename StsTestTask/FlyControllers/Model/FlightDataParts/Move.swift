//
//  Move.swift
//  StsTestTask
//
//  Created by Artem Chursin on 01.11.2019.
//  Copyright © 2019 Artem Chursin. All rights reserved.
//

import Foundation

class Move {
    
    var fromPlace: String?
    var toPlace: String?
    var estimateTime: TimeInterval?
    
    init(fromPlace: String?, toPlace: String?, estimateTime: TimeInterval?) {
        
        self.fromPlace = fromPlace
        self.toPlace = toPlace
        self.estimateTime = estimateTime
    }
}
