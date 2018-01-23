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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension DaysOfTheWeekViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daysOfTheWeek.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dayCell", for: indexPath)
        
        let day = daysOfTheWeek[indexPath.row]
        
        cell.textLabel?.text = day
        
        return cell
    }
    
    // When the user didSelect on a row (or taps) we are going to see the indexPath logged into the console - THIS IS JUST FOR US for now
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    
    
}





