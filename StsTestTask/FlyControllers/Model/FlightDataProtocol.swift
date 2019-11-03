//
//  FlightDataProtocol.swift
//  StsTestTask
//
//  Created by Artem Chursin on 01.11.2019.
//  Copyright © 2019 Artem Chursin. All rights reserved.
//

import Foundation

protocol FlightDataProtocol {
    
    var notice: Notice! { get set }
    var event: Event! { get set }
    var move: Move! { get set }
    
    var flightDate: Date? { get set }
    var gate: String? { get set }
    
    var startTime: Date? { get set }
    var endTime: Date? { get set }
    var name: String! { get set }
    
    var fromPlace: String? { get set }
    var toPlace: String? { get set }
    var estimateTime: TimeInterval? { get set }
}
