//
//  FlightTableViewCell.swift
//  StsTestTask
//
//  Created by Artem Chursin on 01.11.2019.
//  Copyright © 2019 Artem Chursin. All rights reserved.
//

import UIKit

class FlightTableViewCell: UITableViewCell {

    //MARK: - Outlets
    @IBOutlet weak var flightName: UILabel!
    @IBOutlet weak var flightDate: UILabel!
    
    //MARK: - Methods
    func setupCell(data: FlightData) {
        
        flightName.text = data.name
        flightDate.text = "Date: " + getTime(time: data.flightDate, format: "dd.MM.yyyy HH:mm")
    }

    //MARK: - Privare methods
    private func getTime(time: Date?, format: String) -> String {

        guard let finalTime = time  else {
            return "-"
        }
        let formatter = DateFormatter()
        formatter.dateFormat = format
        let fd = formatter.string(from: finalTime)

        return fd
    }
}
