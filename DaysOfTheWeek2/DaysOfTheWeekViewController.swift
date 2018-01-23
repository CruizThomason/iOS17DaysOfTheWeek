//
//  DaysOfTheWeekViewController.swift
//  DaysOfTheWeek2
//
//  Created by cruizthomason on 1/23/18.
//  Copyright © 2018 Cruiz. All rights reserved.
//

import UIKit

class DaysOfTheWeekViewController: UIViewController {

    @IBOutlet weak var DaysOfTheWeekTableView: UITableView!
    
    var daysOfTheWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        DaysOfTheWeekTableView.dataSource = self
        DaysOfTheWeekTableView.delegate = self
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // 1) Check Segue ID
        if segue.identifier == "toDayDetailVC" {
            // 2) get the destinationVC
            guard let destinationVC = segue.destination as? DayDetailViewController
            else { return }
            
            // 3) get the selected day
            if let selectedDay = DaysOfTheWeekTableView.indexPathForSelectedRow {
                
                let day = daysOfTheWeek[selectedDay.row]
                
                // 5) Pass the selectDay to the datailVC
                destinationVC.day = day
            }
        }
    }
}

extension DaysOfTheWeekViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daysOfTheWeek.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)
        
        let day = daysOfTheWeek[indexPath.row]
        let cellNumber = [indexPath.row]
        
        cell.textLabel?.text = day
        
        return cell
    }
    
    // When the user didSelect on a row (or taps) we are going to see the indexPath logged into the console - THIS IS JUST FOR US for now
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    
    
}





