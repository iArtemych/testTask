//
//  ViewController.swift
//  StsTestTask
//
//  Created by Artem Chursin on 01.11.2019.
//  Copyright © 2019 Artem Chursin. All rights reserved.
//

import UIKit

class FlyViewController: UIViewController {

    //MARK: - Variables
    var flights: [FlightData] = []
    var flightsToPresent: [FlightData] = []
    
    //MARK: - Outlets
    @IBOutlet weak var flightTable: UITableView!
    
    //MARK: - LifeStyle ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flightTable.dataSource = self
        flightTable.delegate = self
        
        getDemoData()
        generatePresentArray()
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toFlightDetails" {
            let destination = segue.destination as! DetailFlightViewController
            if let selectedRow = flightTable.indexPathForSelectedRow?.row {
                destination.activeFlight = flightsToPresent[selectedRow]
            }
        }
    }
    
    //MARK: - Private methods
    private func generatePresentArray() {
        let randomNumber = 10 + Int(arc4random_uniform(UInt32(100 - 10 + 1)))
        
        for i in 0...randomNumber {
            
            flightsToPresent.append(flights[i])
        }
    }
    
    private func getDemoData() {
        
        let firstFight = FlightData(flightDate: nil, gate: "A", startTime: "10:30", endTime: "20:20", name: "Moscow - Kazan", fromPlace: "Moscow", toPlace: "Kazan", estimateTime: 5400)
        let secondFight = FlightData(flightDate: "05.06.2020 22:30", gate: nil, startTime: "22:30", endTime: "00:20", name: "Kazan - Moscow", fromPlace: "Kazan", toPlace: "Moscow", estimateTime: 5400)
        
        for index in 0..<100 {
            if index%2 == 0 {
                flights.append(firstFight)
            } else {
                flights.append(secondFight)
            }
        }
    }
}

//MARK: - Table view extention
extension FlyViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return flightsToPresent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath) as! FlightTableViewCell
        
        cell.setupCell(data: flightsToPresent[indexPath.row])
        
        return cell
    }
}

extension FlyViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 85
    }
}

