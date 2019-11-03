//
//  DetailFlightViewController.swift
//  StsTestTask
//
//  Created by Artem Chursin on 01.11.2019.
//  Copyright © 2019 Artem Chursin. All rights reserved.
//

import UIKit

class DetailFlightViewController: UIViewController {

    //MARK: - Variables
    var activeFlight: FlightData!
    
    //MARK: - Outlets
    @IBOutlet weak var flightName: UILabel!
    @IBOutlet weak var flightDate: UILabel!
    @IBOutlet weak var flightGate: UILabel!
    @IBOutlet weak var flightStartCountry: UILabel!
    @IBOutlet weak var flightFinishCountry: UILabel!
    @IBOutlet weak var flightStartTime: UILabel!
    @IBOutlet weak var flightEndTime: UILabel!
    @IBOutlet weak var flightEstimateTime: UILabel!
    
    //MARK: - LifeStyle ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupData()
    }
    
    //MARK: - Private methods
    private func getText(text: String?) -> String {
        
        if let finalText = text {
            return finalText
        } else {
            return "-"
        }
    }
    
    private func getTime(time: Date?, format: String) -> String {
        
        guard let finalTime = time  else {
            return "-"
        }
        
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let fd = formatter.string(from: finalTime)

        return fd
    }
    
    private func getDouble(number: Double?) -> String {
        
        if let finalNumber = number {
            return String(finalNumber / 3600)
        } else {
            return "-"
        }
        
    }
    
    private func setupData() {
        
        let hourFormat = "HH:mm"
        let fullFormat = "dd.MM.yyyy HH:mm"
        
        flightName.text = activeFlight.name
        flightGate.text = "Gate: " + getText(text: activeFlight.gate)
        flightStartCountry.text = "From: " + getText(text: activeFlight.fromPlace)
        flightFinishCountry.text = "To: " + getText(text: activeFlight.toPlace)
        flightStartTime.text = "Start time: " + getTime(time: activeFlight.startTime, format: hourFormat)
        flightEndTime.text = "Finish time: " + getTime(time: activeFlight.endTime, format: hourFormat)
        flightDate.text = "Date: " + getTime(time: activeFlight.flightDate, format: fullFormat)
        flightEstimateTime.text = "Flight time: " + getDouble(number: activeFlight.estimateTime) + " hour(s)"
    }
}
