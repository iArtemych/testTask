//
//  FlightData.swift
//  StsTestTask
//
//  Created by Artem Chursin on 01.11.2019.
//  Copyright © 2019 Artem Chursin. All rights reserved.
//

import Foundation

class FlightData: FlightDataProtocol {
    
    //MARK: - Variables
    var notice: Notice!
    var event: Event!
    var move: Move!
    
    var flightDate: Date?
    var gate: String? 
    var startTime: Date?
    var endTime: Date?
    var name: String!
    var fromPlace: String?
    var toPlace: String?
    var estimateTime: TimeInterval?
    
    //MARK: - Init
    init(flightDate: String?, gate: String?, startTime: String?, endTime: String?, name: String, fromPlace: String?, toPlace: String?, estimateTime: TimeInterval?) {
        
        notice = Notice(flightDate: flightDate, gate: gate)
        event = Event(startTime: startTime, endTime: endTime, name: name)
        move = Move(fromPlace: fromPlace, toPlace: toPlace, estimateTime: estimateTime)
        
        setData()
    }
    
    //MARK: - Private methods
    private func setData() {
        
        flightDate = notice.flightDate
        gate = notice.gate
        
        startTime = event.startTime
        endTime = event.endTime
        name = event.name
        
        fromPlace = move.fromPlace
        toPlace = move.toPlace
        estimateTime = move.estimateTime
    }
    
}
